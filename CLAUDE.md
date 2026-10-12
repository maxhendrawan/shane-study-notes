# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

Study-notes pipeline for university Canvas courses (CityU). Not an app repo. Root holds the scripts; `canvas_downloads\` holds downloaded course material and weekly lecture summaries.

## Layout

- `canvas_downloads/<course>/` — raw Canvas files (slide PDFs, readings, course outline)
- `canvas_downloads/<course>/<W01 - W05>/` — week slide PDFs plus `summary/`
- `summary/` — one set per week: `<week>-summary.md` (source of truth) + generated `.docx` + `.pdf`

## Summary pipeline (run in this order)

1. `python md2docx.py in.md out.docx` — md → docx with marker shading. Self-test: `python md2docx.py --selftest`
2. `.\docx2pdf.ps1 <docx-or-folder>` — docx → PDF via Word COM (Word must be installed; keeps run shading)
3. `python check_markers.py file1.md ...` — counts markers per file, exit 1 on stray ones

## Markers

Study-highlight syntax embedded in summary md. Colors defined in `md2docx.py` `FILL`:

- `{{A:author/year}}` — yellow
- `{{T:theory name}}` — purple
- `{{D:definition}}` — light blue

Markers are single-line, non-nested. Raw in md, shaded in docx/pdf.

## Summary style (user preferences)

- Bullets over prose; every `###` subsection gets a `**Keywords:**` line under its heading; segment long subsections into smaller subtopics
- Concise but detailed and precise; concrete examples tagged `*Example:*`; no fluff, filler, or meta-commentary
- Keep slide references
- Gold-standard style: `summary/W02-summary_Example.pdf` — numbered sections, `**Keywords:**` under every heading (`##` and `###`), `→` takeaways, study cues like `(memorise)`/`One-liner:`, "One-Page Revision Spine" numbered recap at end, ~9 pages/~22k chars per week
- Multi-week summary rewrites: dispatch one subagent per week in parallel (subagents run deepseek — do not override model)

## md2docx.py limits

- No markdown tables — lines render as plain paragraphs; use bullets
- No blockquotes
- Handles `#`/`##`/`###` headings, bullets, numbered lists, `**bold**`, `*italic*`, markers (including markers nested inside bold/italic)

## Canvas downloader

`canvas_download.ps1 -BaseUrl <canvas-base-url> [-Download] [-Term 2026] [-Course <name-substring>]`

- Without `-Download`: lists matching courses only
- Token read from `canvas_token.txt` (secret — never print or copy contents)
- Skips files already on disk; filenames contain literal `[ ]` — never wildcard them

## Notes

- Use plain `python` (3.12 in PATH)
- OneDrive-synced folder; no git repo
