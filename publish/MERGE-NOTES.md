# publish — merge notes (2026-11-14)

Merged from: facebook-instagram (3) + social_publishing_instagram_cover (2) +
viral-daily (1) + beyond-words (116) + oh-story (3) = **125 files**, all
preserved whole under their original names.

## What was deduplicated

- **viral-daily "What the winners taught us"** is a condensation of
  ai-creators-lessons. Replaced in the merged copy with a pointer to
  video-craft's creator-lessons section (Track 4). The summary lines are kept
  in the pointer so the runbook still reads standalone.
- **viral-daily's FilmCraft Part 7 process section** repeats sumi's Part 7
  process. Replaced in the merged copy with a pointer to video-craft Track 1;
  only the Viral Daily-specific adaptations (parallel split, −14 LUFS, crf 23,
  ffmpeg allowed for plain joins, light check as its gate) stay in the runbook.
- **facebook-instagram's FACEBOOK_GRAPH_API_SETUP.md** largely duplicates its
  SKILL.md install/token/code steps. Both files kept whole; a one-line pointer
  was added at the top of the setup guide saying the SKILL.md is canonical.

## Conflict decisions

| Conflict | Decision |
| --- | --- |
| Approval: facebook-instagram approval-mandatory vs viral-daily post-straight-away | Scoped by route. Approval governs the Graph API route; Viral Daily keeps post-straight-away for @usamabkr85 ONLY, browser-only. |
| Shot length (cross-skill): viral-daily 3–4 s vs herk/ai-creators 1.1–1.4 s | Scoped by format; see video-craft. Open question recorded: Nate 1.1–1.4 s tightening for Viral Daily is unanswered. |
| Geolyth deadline text stale ("by Sun 2026-11-15 ~07:00", "deep study in progress") | Updated to completed status: Roundup #1 live Sat 2026-11-14 ~08:19, full-channel watch of all 14 videos done; daily 07:00 job continues. §9 learnings folded in (longest/densest win; dates disagree, numbers drift, segments reposted — NOT copied; our edge is subtitles + date/number discipline). Pattern file lives outside the repo. |

## Fixes applied in the merged copy

- facebook-instagram SKILL.md: fixed the broken link `../FACEBOOK_GRAPH_API_SETUP.md`
  → `FACEBOOK_GRAPH_API_SETUP.md` (2 occurrences; the file is in the SAME directory).
- Noted (not silently fixed): Graph API v18.0 is stale; the "Page Token never
  expires" claim is unqualified; SCOPE-NOTE account claims (2026-11-08) need
  re-verification.

## Gaps recorded honestly (not papered over)

- **beyond-words has NO in-skill attribution to Beyond Tahir.** None invented.
  Carried verbatim: repo-root README credit + `LICENSE.txt` (MIT, "Copyright
  (c) 2026 Beyondwords contributors") + `modules/beyondwords/CREDITS.md`.
- **oh-story is not runnable as staged.** Its mandatory pre-read table demands
  ~20 reference files absent from staging (they live in
  `~/workspace/oh-story-claudecode`, outside the repo). The 5 writing
  principles are the usable part; the merged SKILL.md says so plainly.
- **social_publishing_instagram_cover amends a base skill (`social_publishing`)
  that is not in this repo.** Its `skill.yaml` provenance is preserved verbatim.
