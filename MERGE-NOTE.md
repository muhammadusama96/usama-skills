# Merge note — 19 skills → 5 (2026-11-14)

## Why the merge happened

User order, 2026-11-14: merge the 19 skills into 3–5 total (min 3, max 5),
grouped so they make sense. **Do NOT delete any skill** — merge by affinity,
every skill survives inside a merged skill. Five study agents read all 19
skills first; the grouping below was decided from their reports. The merge was
built in `~/workspace/skills-repo-merged/` (staging only). Nothing was uploaded
to GitHub.

## The 5-group rationale

| Merged skill | Rationale — why these belong together |
| --- | --- |
| **video-craft** (375) | Everything that makes moving pictures: story films (sumi), reel edits (herk-edit-kit), format reverse-engineering (rea-video), how the best creators work (ai-creators-lessons), vector art (sumi-svg). One craft, five angles. |
| **youtube-agent** (26) | YouTube writing, research and packaging only. Keeps the established name. youtube-automation contributes only its metadata/subtitle sliver — the rest is out of scope (see its MERGE-NOTES.md). |
| **beyond-growth** (179) | Get found + get clicked. Both by Beyond Tahir: website SEO/AEO/GEO (beyond-seo) and the thumbnails/posters that earn the click (beyond-artist). |
| **ai-services** (20) | Everything with a key, a price or a setup: voice narration routes (leanvox, sumi-voicebox, sumi-elevenlabs), local LLM inference (colibri), decision models (jev). One place for the shared security posture. |
| **publish** (125) | Getting finished work out: social publishing routes, the Viral Daily runbook, book publishing (beyond-words), story writing (oh-story). |

## Standalone-vs-merged decisions

- **viral-daily** and **oh-story** are kept WHOLE as clearly-separated
  runbook/appendix sections inside `publish/` (Tracks 3 and 5), not as
  standalone skills, so the 5-total holds with nothing deleted. viral-daily is
  a complete runbook for one account (@usamabkr85); oh-story is a writing
  appendix whose pre-read references are absent from staging. Both are flagged
  as such in `publish/SKILL.md` and `publish/MERGE-NOTES.md`.
- **youtube-automation** is a hollow shell (marketing copy, zero implementation
  files). Preserved whole as a sub-document; only its metadata/subtitle sliver
  is routed to. The rest stays explicitly out of scope.
- **beyond-seo is docs-only as staged** — its executable core (`scripts/run.py`,
  `src/`) is missing from staging AND from `~/workspace/custom-skills/beyond-seo/`
  (checked 2026-11-14). Labelled docs-only; `run.py doctor` is not presented
  as step one.

## What was done to the files

- Every original skill copied whole (`cp -r`) under its original name inside
  its merged skill. Originals in `~/workspace/skills-repo/` and
  `~/workspace/custom-skills/` were NOT modified.
- Each merged skill got a new English `SKILL.md` (router + shared rules +
  tracks + "What came from where"), a `MERGE-NOTES.md` (every dedup and
  conflict decision) and a `CREDITS.md` (verbatim attribution).
- Fixes applied ONLY where listed in the task: herk Linear promo plan moved to
  `archive/`; facebook-instagram broken `../` link fixed (2 occurrences) +
  canonical pointer; Voicebox setup.md spacing fixed (8 glitches); LeanVox
  legacy `/v1/tts/jobs` aliases dropped; youtube-agent "Before you write"
  (6 files) and "The gate" (11 files) collapsed into shared sections;
  viral-daily winners + FilmCraft sections replaced with pointers; Geolyth
  status updated to completed with §9 learnings; HISTORICAL banners on sumi's
  playbook + real-anime-video-loop. Full detail in each skill's MERGE-NOTES.md.
- Root `LICENSE` copied as-is. This note replaces the old staging
  `SYNC-NOTE.md` (not copied verbatim).

## Verification results (2026-11-14, before reporting)

- **File counts — PASS.** Merged tree holds all **725** original skill files:
  video-craft 375, youtube-agent 26, beyond-growth 179, ai-services 20,
  publish 125. Verified by `find … -type f | wc -l` per merged skill against
  the staging counts, and by a full path-by-path comparison of all 725 files
  (expected vs actual: 725/725, nothing missing, nothing extra; the one moved
  file is the herk Linear promo plan, now in `archive/`). Plus 18 new files
  (5 SKILL.md + 5 MERGE-NOTES.md + 5 CREDITS.md + root README.md +
  root MERGE-NOTE.md + herk `archive/README.md`) and the copied LICENSE:
  744 files total. No file could not be placed; nothing is missing.
- **All 19 original skill names** appear in the root README mapping table and
  have their files present under their original names.
- **Spot-checks — PASS.** Each merged SKILL.md read back: English, router up
  top, mapping table present. Links introduced by the merge resolve:
  yt sub-skill pointers (`../../../SKILL.md` → merged youtube-agent root),
  viral-daily pointers (`../../video-craft/SKILL.md` → merged video-craft
  root), in-skill relative links (`sumi/SKILL.md`, `beyond-seo/SKILL.md`,
  etc.) all point at existing files.
- **Secret scan — PASS.** Pattern scan of the merged tree for live key/token/
  password values returned no matches. Keys appear by name only
  (`LEANVOX_API_KEY`, `ELEVENLABS_API_KEY`, `TYPESAFE_API_KEY`).
- **Known discrepancies recorded (not hidden):** "Before you write" verbatim
  block is in 6 yt sub-skills, not 9 as the study reports said; beyond-artist
  version conflict (1.1.0 vs 1.8.0) — no version stamped on beyond-growth;
  beyond-words has no in-skill Beyond Tahir attribution; oh-story pre-read
  files absent; beyond-seo code absent in both staging and custom-skills;
  Graph API v18.0 stale; "Page Token never expires" unqualified. All recorded
  in the relevant MERGE-NOTES.md.

## What this merge does NOT do

- Does NOT upload anything to GitHub.
- Does NOT change the weekly skills-repo update job (Mondays 10:00) — it needs
  re-pointing separately (see root README.md).
- Does NOT re-licence any third-party work. The repo-root MIT covers only
  Usama's own contributions.

## Weekly sync — 2026-11-23 (second run under the merged layout)

- **New skill added: `zsky_motion` (2 files) → `video-craft/` (Track 6).**
  Created live 2026-11-18 after ZSky was tested 2026-11-17 as the working
  free motion route: 5-second image-to-video clips, no credits, no daily
  cap, with the "two friends" wording that gets past the people filter, trim
  to 5.0 seconds (black zsky.ai end card on the last ~1.75 s), hide every
  creation from Explore, free clips deleted after 7 days. Router
  (`video-craft/SKILL.md`), `video-craft/MERGE-NOTES.md` and root README
  mapping updated: 20 → 21 originals, 727 → 729 files. The skill is a
  managed learned skill inside its 30-day measurement window (to
  2026-12-18); its `skill.yaml` keeps its internal evidence handles and run
  ID, as the merged copy already does for
  `social_publishing_instagram_cover`.
- **Synced (live change since 2026-11-16):**
  `publish/social_publishing_instagram_cover/skill.yaml` (review metadata
  renewed 2026-11-21: base revision, rationale, review dates, run ID).
  Re-scrubbed on copy: no passwords, keys, tokens, emails, phone numbers or
  private account IDs in either synced file.
- **Held back, not published: `beyond-gtaclips`.** Third-party Beyond Tahir
  skill (GTA 6 clipping, created live 2026-11-19, `SKILL.md` updated
  2026-11-21, 49 files incl. brand assets) — held back from the public repo
  until Beyond Tahir gives written permission, per the standing flag. NOT in
  the merged tree, NOT in the weekly diff map. The hold is also recorded in
  `video-craft/MERGE-NOTES.md` so a future run does not sync it by accident.
- **Excluded (unchanged):** sumi bundled-bank `.wav` files (61 files,
  219 MB, generated media), `__pycache__/`, `.write-lock`. No other live
  changes existed: every other diff between the live skills and this tree is
  a merge-time edit (2026-11-14) or a 2026-11-16 sync adaptation — left
  untouched.

## Weekly sync — 2026-11-16 (first run under the merged layout)

- **New skill added: `viral-prediction` (2 files) → `publish/` (Track 6).**
  Created 2026-11-15 after the merge: free-only virality scorers (PreViral,
  Virality Predictor, Virality Labs, Virality AI, quso, StoryCut, Otto,
  Google Trends) plus a local on-machine scorer. Placed in `publish/` because
  it is a pre-publish check — score the idea before filming, the hook before
  posting. The local scorer code lives OUTSIDE the skill directory
  (`~/workspace/viral-prediction/scorer/`) and is NOT shipped; the skill's
  external free tools are the portable part (noted in `publish/SKILL.md`
  Track 6 and `publish/MERGE-NOTES.md`). Root README mapping updated:
  19 → 20 originals, 725 → 727 files.
- **Synced (live changes since the merge, 2026-11-15/16):**
  `video-craft/sumi/SKILL.md` (poster-hook rule, narration direction,
  Chatterbox stagger rule), `video-craft/sumi/references/green-valley-playbook.md`
  (poster-hook rule in step 1, FilmCraft Part 7 block appended),
  `video-craft/sumi/references/hooks-endings-sound.md` (Kallaway hook-check
  section), `video-craft/ai-creators-lessons/SKILL.md` (§13: five
  content-growth creators — Varun Mayya, AniThing, Kallaway, Mino Lee,
  Tatsuki), `publish/viral-daily/SKILL.md` (renamed @usamabkr85 →
  @viraldaily.official; roundup-voice rule, narration direction, hook-archetype
  rotation, reel-structure section, AI-content-label section, Edits-app rule).
- **Merge adaptations preserved, not overwritten:** "Usama" → "the user" in
  synced in-skill prose; the Kaggle account name + notebook URL that the live
  sumi `SKILL.md` re-added were re-scrubbed; the playbook's HISTORICAL banner
  was kept (wording updated to point at the appended Part 7 block); the
  viral-daily merge dedup was kept — the "What the winners taught us" and
  FilmCraft sections stay pointers to video-craft, only the genuinely new
  sections were added; repo-relative links kept (`../../video-craft/...`).
- **Excluded (noted in root README):** sumi bundled-bank `.wav` files
  (61 files, 219 MB, generated media), `__pycache__/`, `.write-lock`.
  No other live changes existed: every other diff between the live skills and
  this tree is a merge-time edit (2026-11-14) in the merged copy, not a live
  change — those were left untouched.
- **Stale `SYNC-NOTE.md`:** removed from the live GitHub repo in this run
  (it described the old 19-skill sync; this note replaces it).
