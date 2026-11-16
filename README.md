# usama-skills (merged)

A collection of AI skills for making videos, viral reels, SEO, voice and
social content — free for anyone to use.

This repo holds **5 merged skills**, built 2026-11-14 by merging 19 original
skills into 5 groups (see `MERGE-NOTE.md` for why and how). A 20th original
skill, `viral-prediction`, was added in the weekly sync of 2026-11-16. Every
original skill is preserved whole inside its merged skill — nothing was
deleted. Each merged skill has one `SKILL.md` router at its root, a
`MERGE-NOTES.md` recording every dedup and conflict decision, and a
`CREDITS.md` with verbatim attribution.

## Credits — Beyond Tahir

Four of the skills in this repo are the work of **Beyond Tahir** — @beyondtahir:

- **Beyond Sumi** (`video-craft/sumi/`, plus companions `sumi-svg`, `sumi-voicebox`, `sumi-elevenlabs`) — the film studio behind the Anime Valley films.
- **Beyond SEO** (`beyond-growth/beyond-seo/`) — website SEO, AEO and GEO, plus video-metadata playbooks.
- **Beyond Artist** (`beyond-growth/beyond-artist/`) — thumbnails, posters and social visuals.
- **Beyond Words** (`publish/beyond-words/`) — the book business (KDP).

Find him at: YouTube https://www.youtube.com/@beyondtahir · Instagram https://www.instagram.com/beyondtahir · GitHub https://github.com/beyondtahir. Every video made with these skills credits him — see each skill's `CREDITS.md` for the exact lines. (Do not use @beyondtahirofficial — that handle returns not found.)

## The 5 skills

| Merged skill | One line | Originals inside |
| --- | --- | --- |
| `video-craft/` | Make story films and reels end to end — Sumi films, Herk edits, rea-video, creator lessons, SVG art | sumi, herk-edit-kit, rea-video, ai-creators-lessons, sumi-svg |
| `youtube-agent/` | YouTube writing, research and packaging only — scripts, hooks, titles, SEO, Shorts | youtube-agent, youtube-automation |
| `beyond-growth/` | Get found + get clicked — website SEO/AEO/GEO + thumbnail/poster design | beyond-seo, beyond-artist |
| `ai-services/` | AI services with keys/pricing/setup — voice narration routes, local LLM inference, decision models | leanvox, sumi-voicebox, sumi-elevenlabs, colibri, jev |
| `publish/` | Getting finished work out — social publishing, Viral Daily runbook, book publishing (KDP), story writing, free virality prediction | facebook-instagram, social_publishing_instagram_cover, viral-daily, beyond-words, oh-story, viral-prediction |

## Mapping: 20 originals → 5 merged skills

| Original skill | Files | Merged into |
| --- | --- | --- |
| sumi | 230 | video-craft |
| herk-edit-kit | 126 | video-craft |
| rea-video | 10 | video-craft |
| ai-creators-lessons | 1 | video-craft |
| sumi-svg | 8 | video-craft |
| youtube-agent | 24 | youtube-agent |
| youtube-automation | 2 | youtube-agent |
| beyond-seo | 135 | beyond-growth |
| beyond-artist | 44 | beyond-growth |
| leanvox | 9 | ai-services |
| sumi-voicebox | 4 | ai-services |
| sumi-elevenlabs | 4 | ai-services |
| colibri | 1 | ai-services |
| jev | 2 | ai-services |
| facebook-instagram | 3 | publish |
| social_publishing_instagram_cover | 2 | publish |
| viral-daily | 1 | publish |
| beyond-words | 116 | publish |
| oh-story | 3 | publish |
| viral-prediction | 2 | publish |
| **Total original skill files** | **727** | |

## What is not in this repo (excluded on purpose)

- **Generated media:** sumi's sound-library bundled-bank `.wav` files (61
  files, 219 MB) are generated audio, not skill content — excluded from the
  repo. The bank's `library.json` / `score.json` metadata files ARE included.
- **Build artefacts:** `__pycache__/` directories and editor lock files
  (`.write-lock`) are never synced.
- **Local tools referenced by skills but not shipped:** the viral-prediction
  local scorer code (`~/workspace/viral-prediction/scorer/`), the Geolyth
  pattern file, and the oh-story pre-read files live outside the skill
  directories. Each skill's `SKILL.md` / `MERGE-NOTES.md` says so where it
  applies.

## Attribution and licensing — summary

- The repo-root MIT licence (`LICENSE`, Copyright (c) 2026 Muhammad Usama)
  covers **ONLY Usama's own contributions**. It does not cover third-party
  skills.
- **Beyond Tahir:** sumi, sumi-elevenlabs, sumi-svg, sumi-voicebox,
  beyond-artist, beyond-seo, beyond-words are his work (per the repo-root
  README Credits). beyond-seo and beyond-artist ship no licence file — confirm
  with Beyond Tahir before relying on them staying public. beyond-words carries
  no in-skill attribution to him; none is invented (see
  `publish/MERGE-NOTES.md`).
- **Jake Schincariol:** youtube-agent, MIT (licence reproduced verbatim in
  `youtube-agent/CREDITS.md`).
- **Nate Herk:** herk-edit-kit and the AI Creators Lessons — no licence file in
  staging, flag before republishing.
- **JuneYaooo:** rea-video; **Sirio Berati:** motion-graphics boards (MIT);
  **Jeff Su, Nate Herk, Sirio Berati:** AI Creators Lessons credits.
- **Antigravity OS:** youtube-automation v2.0.0 — no licence file, flag before
  republishing. **zenstory-ai:** oh-story v1.0.0 — no LICENSE in staging, flag
  before republishing. **shifabaloch13:** facebook-instagram. **JustVugg:**
  colibri. **jamiepine:** Voicebox. **typesafe-ai:** Jev (MIT).
- Full verbatim attribution per skill lives in each merged skill's `CREDITS.md`.
  Never re-licence third-party work.

## Note on the weekly update job

The weekly skills-repo update job (Mondays 10:00 AST) syncs
`~/workspace/custom-skills/` → this merged staging mirror, then uploads the
changed files to the GitHub repo via the browser. It was re-pointed at the
merged 5-skill layout for its first run under the new layout on Mon
2026-11-16. Each run re-scrubs changed files (no passwords, API keys, tokens,
emails, phone numbers or private account IDs), preserves the merge's
adaptations (de-personalised "the user" prose, HISTORICAL banners,
repo-relative links, dedup pointers), and records the sync in
`MERGE-NOTE.md` and the affected skills' `MERGE-NOTES.md`.
