# Weekly sync note — how to update this repo

Owner: muhammadusama96 · Repo: `usama-skills` · Schedule: weekly
Source of truth: `~/workspace/custom-skills/` (the live skills on this machine).
Staging area: `~/workspace/skills-repo/` (this folder — what gets uploaded).

> The GitHub App cannot write to this account's repos, so the weekly update
> runs through the BROWSER (signed in as muhammadusama96): the sync prepares
> the clean files here, and a browser task uploads the changed files to
> GitHub. Never paste a token or password into chat or into a file.

## Each weekly run

1. **Diff.** Compare `~/workspace/custom-skills/` against `~/workspace/skills-repo/`:
   `diff -rq ~/workspace/custom-skills/ ~/workspace/skills-repo/ --exclude=__pycache__ --exclude=.git`
   (or `rsync -ani --dry-run` for a per-file list). Note added, changed and
   removed skills/files.
2. **Copy changed files only.** For each changed skill, re-copy with the same
   exclusion rules used for the first staging:
   - `rsync -a --exclude='__pycache__' --exclude='*.pyc' --exclude='.write-lock' --exclude='.git' --exclude='node_modules' --exclude='*.wav' <skill>/ ~/workspace/skills-repo/<skill>/`
   - `herk-edit-kit` is special: its folder is mostly symlinks into
     `~/workspace/herk-edit-kit/` (1.5 GB with node_modules). Re-copy ONLY
     `SKILL.md`, `README.md`, `AGENTS.md`, `MOTION_PHILOSOPHY.md`, `docs/`
     and the `skills-*/` folders, dereferencing symlinks (`cp -rL`).
   - Never copy `sumi/assets/sound-library/bundled-bank/*.wav` (48 files,
     ~220 MB) — the catalog + scripts stay, the audio is regenerated.
3. **Re-scrub.** Run the scrub on the staged copy (text files only) and verify
   the counts:
   ```bash
   cd ~/workspace/skills-repo
   find . -type f \( -name "*.md" -o -name "*.py" -o -name "*.json" -o -name "*.yaml" -o -name "*.yml" -o -name "*.txt" -o -name "*.js" -o -name "*.mjs" -o -name "*.html" -o -name "*.css" -o -name "*.csv" \) -print0 | xargs -0 perl -i -pe '
     s/Usama Stories/\x{1F}USAMASTORIES\x{1F}/g;
     s/account usama1996, notebook https:\/\/www\.kaggle\.com\/code\/usama1996\/notebookeb460c7918\/edit/a free Kaggle account/g;
     s/usama1996/a Kaggle user/g;
     s/61596287158561/00000000000000000/g;
     s/may read "Baker" or "Viral Daily"/may read "Viral Daily"/g;
     s/Usama\x{27}s/the user\x{27}s/g;
     s/\bUsama\b/the user/g;
     s/\x{1F}USAMASTORIES\x{1F}/Usama Stories/g;
   '
   ```
   Then verify — these must all come back clean:
   - `grep -rI "Usama" .` → only the intentional `Usama Stories` page name.
   - `grep -rI -E "usama1996|notebookeb460c7918|61596287158561" .` → 0 hits.
   - `grep -rI -E "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}" .` → 0 hits
     (excluding example.com).
   - Any NEW personal identifier found during the week (new account, email,
     key, phone number) gets a new scrub rule here AND in the list above.
4. **README.** If a skill was added, removed or materially changed, update
   `README.md`: the at-a-glance table, the skill-details section, and the
   Credits / What's-not-included sections. Bump the count in the intro if the
   number of skills changed.
5. **Size check.** `du -sh ~/workspace/skills-repo` — flag it if the total
   jumps unexpectedly (a new sound bank, a vendored model, a video file).
   No single file over ~50 MB; no `*.wav` / `*.mp4` / model weights.
6. **Upload (browser task).** Hand the changed-file list to a browser task:
   signed in as muhammadusama96, upload the changed files to
   `muhammadusama96/usama-skills` (create the repo first if it does not
   exist yet — public). Verify the repo page shows the new files, then
   report the repo link.
7. **Log.** Note the sync date, what changed, and the staged size in the
   weekly job's report.

## Known issues to fix upstream (not staging errors)

- `viral-daily/SKILL.md` frontmatter still says "checked every 2 hours"
  while the body says every 5 hours — fix the frontmatter in the source
  skill, then let the next sync carry it over.
- `youtube-agent/SKILL.md` references the upstream clone path
  `~/workspace/youtube-agent-skill/`; the skill actually lives in
  `custom-skills/youtube-agent/`. Harmless, but worth aligning one day.
