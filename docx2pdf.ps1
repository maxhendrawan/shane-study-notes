param(
    [Parameter(Mandatory=$true)][string]$Path
)
$ErrorActionPreference = "Stop"

# ponytail: Word COM, not a converter lib - Word is already installed and
# ExportAsFixedFormat keeps the run shading intact.
$files = if (Test-Path -LiteralPath $Path -PathType Container) {
    Get-ChildItem -LiteralPath $Path -File -Filter *.docx
} else {
    Get-Item -LiteralPath $Path
}

$word = New-Object -ComObject Word.Application
$word.Visible = $false
$word.DisplayAlerts = 0
try {
    foreach ($f in $files) {
        $pdf = [System.IO.Path]::ChangeExtension($f.FullName, ".pdf")
        $doc = $word.Documents.Open($f.FullName, $false, $true, $false)  # readonly, not recent
        try {
            $doc.ExportAsFixedFormat($pdf, 17)  # 17 = wdExportFormatPDF
        } finally {
            $doc.Close($false)
        }
        Write-Host "pdf: $pdf"
    }
} finally {
    $word.Quit()
    [System.Runtime.InteropServices.Marshal]::ReleaseComObject($word) | Out-Null
}
