# beyond-growth — merge notes (2026-11-14)

Merged from: beyond-seo (135) + beyond-artist (44) = **179 files**, all
preserved whole under their original names. Both originals are by Beyond Tahir.

## What was deduplicated

- **"Never invent numbers/results"** — stated once in this skill's "Shared
  rules"; the same rule appears once per merged skill elsewhere. No copy was
  deleted from any original file.

## Conflict decisions

| Conflict | Decision |
| --- | --- |
| beyond-artist version: SKILL.md says 1.1.0, its own test reports say 1.8.0 | Do NOT stamp a version on the merged skill. Both numbers are recorded here; neither is quoted as settled. beyond-seo's version (2.10.0) is unaffected. |

## Other notes

- **beyond-seo is docs-only as staged.** Its executable core (`scripts/run.py`,
  `src/`) is MISSING from the staging copy. Checked
  `~/workspace/custom-skills/beyond-seo/` (read-only) 2026-11-14: the code is
  absent there too (135 files, same docs, no `scripts/` or `src/`). The merged
  skill is labelled docs-only and does NOT present `run.py doctor` as step one.
- **Dangling upstream links.** beyond-seo docs link to upstream files
  (`../LICENSE`, `../CHANGELOG.md`, `../CONTRIBUTING.md`, etc.) that are not in
  the staging copy. Noted as dangling; the files were not invented.
- **Licence caution.** beyond-seo and beyond-artist ship NO licence file. The
  repo-root MIT (Copyright (c) 2026 Muhammad Usama) covers ONLY Usama's own
  contributions. Confirm with Beyond Tahir before relying on them staying
  public or redistributing them. See `CREDITS.md`.
