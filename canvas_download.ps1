param(
    [Parameter(Mandatory=$true)][string]$BaseUrl,
    [string]$TokenFile = "$PSScriptRoot\canvas_token.txt",
    [switch]$Download,
    [string]$Term = "2026",
    [string]$Course = "",
    [string]$OutDir = "$PSScriptRoot\canvas_downloads"
)
$ErrorActionPreference = "Stop"
$BaseUrl = $BaseUrl.TrimEnd("/")
$token = (Get-Content $TokenFile -Raw).Trim()
$headers = @{ Authorization = "Bearer $token" }

# Download via Invoke-WebRequest, then WriteAllBytes: IWR -OutFile resolves the path
# through the PS provider, so [ ] in a filename are read as wildcards and blow up.
# WebClient.DownloadFile is worse - it forwards the Authorization header to the S3
# redirect and S3 answers 403.

# ponytail: IWR not IRM -- need Link header for pagination
function Get-AllPages($url) {
    $out = @()
    while ($url) {
        $r = Invoke-WebRequest -Uri $url -Headers $headers -UseBasicParsing
        $out += ($r.Content | ConvertFrom-Json)
        $url = $null
        $m = [regex]::Match([string]$r.Headers["Link"], '<([^>]+)>;\s*rel="next"')
        if ($m.Success) { $url = $m.Groups[1].Value }
    }
    $out
}

$courses = @(Get-AllPages "$BaseUrl/api/v1/courses?enrollment_state=active&include[]=term&per_page=100")
$courses = $courses | Where-Object { $_.name -and ($_.term.name -match $Term) -and ($_.name -match $Course) }

if (-not $Download) {
    $courses | Select-Object id, name, @{n='term';e={$_.term.name}} | Format-Table -AutoSize
    Write-Host "`nList only. Re-run with -Download to fetch files."
    return
}

foreach ($c in $courses) {
    $safe = ($c.name -replace '[^\w\- ]', '_').Trim()
    $dir = Join-Path $OutDir $safe
    New-Item -ItemType Directory -Force $dir | Out-Null
    Write-Host "== $($c.name)"

    $files = @(Get-AllPages "$BaseUrl/api/v1/courses/$($c.id)/files?per_page=100")

    # module items hold file ids too; Files tab often misses them
    $mods = @(Get-AllPages "$BaseUrl/api/v1/courses/$($c.id)/modules?include[]=items&per_page=100")
    $seen = @{}
    foreach ($f in $files) { $seen[[string]$f.id] = $f }
    foreach ($item in ($mods | ForEach-Object { $_.items })) {
        if ($item.type -ne "File" -or $seen.ContainsKey([string]$item.content_id)) { continue }
        $file = Invoke-RestMethod -Uri "$BaseUrl/api/v1/files/$($item.content_id)" -Headers $headers
        $seen[[string]$file.id] = $file
    }

    foreach ($f in $seen.Values) {
        # literal path on purpose - brackets are legal in Windows filenames
        $target = Join-Path $dir $f.display_name
        if ([System.IO.File]::Exists($target)) { Write-Host "  skip $($f.display_name)"; continue }
        # module-only files have no url; /api/v1/files/:id/download 404s for them
        $url = if ($f.url) { $f.url } else { "$BaseUrl/files/$($f.id)/download?download_frd=1" }
        try {
            $r = Invoke-WebRequest -Uri $url -Headers $headers -UseBasicParsing -MaximumRedirection 5
            [System.IO.File]::WriteAllBytes($target, $r.Content)
            Write-Host "  got  $($f.display_name)"
        } catch {
            Write-Host "  FAIL $($f.display_name): $($_.Exception.Message)"
        }
    }
}
Write-Host "`nDone -> $OutDir"
