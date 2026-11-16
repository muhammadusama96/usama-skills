---
name: publish
description: Getting finished work out — social publishing (Facebook / Instagram Graph API and browser routes), the Viral Daily runbook for @viraldaily.official, book publishing with KDP, story writing, and free virality prediction. Use when publishing, scheduling or posting finished work, scoring a video idea or hook before posting, or when writing the story itself.
---

# publish

Merged 2026-11-14 from five originals: `facebook-instagram`,
`social_publishing_instagram_cover`, `viral-daily`, `beyond-words`, `oh-story`.
A sixth original, `viral-prediction`, was added in the weekly sync of
2026-11-16 as Track 6. Every original file is preserved whole under its own
subfolder; this file is the router and the shared rules.

> **Credit — Beyond Tahir.** The book-publishing track in this skill
> (`beyond-words/`) is listed as the work of **Beyond Tahir** — @beyondtahir —
> https://www.youtube.com/@beyondtahir · https://www.instagram.com/beyondtahir ·
> https://github.com/beyondtahir. Note: beyond-words itself carries no in-skill
> attribution to him; none is invented — see `CREDITS.md`.

> **Why viral-daily and oh-story are sections here, not standalone skills.**
> Both are kept WHOLE as clearly-separated runbook/appendix sections inside this
> merged skill — viral-daily as Track 3, oh-story as Track 5 — so the 5-skill
> total holds with nothing deleted. See the root `MERGE-NOTE.md`.

## Which job is this?

| Job | Track | Start here |
| --- | --- | --- |
| Post to Facebook / Instagram via API | 1 — Graph API route | `facebook-instagram/SKILL.md` |
| Change a published Reel's cover safely | 2 — Cover correction | `social_publishing_instagram_cover/SKILL.md` |
| Viral Daily: find, make and post a viral reel | 3 — Viral Daily runbook | `viral-daily/SKILL.md` |
| Publish a book (KDP) | 4 — Book publishing | `beyond-words/` |
| Write a short story | 5 — Story writing (oh-story) | `oh-story/SKILL.md` |
| Score a video idea or hook before posting | 6 — Virality prediction | `viral-prediction/SKILL.md` |

## Shared rules

- **Jury-PASS only for uploads.** Brand videos upload only after a ten-agent
  gate + jury PASS. Viral Daily reels use their own light check (Track 3) —
  that exception is scoped to @viraldaily.official only and does not extend to brand
  work.
- **YouTube link rule (standing):** every Short's YouTube link is attached on
  Instagram AND on Facebook (YouTube first, then the live Shorts URL in the
  caption / Reel description, edited in later if YouTube is not live yet).
- **Shorts only on Facebook.** Full films never go on Facebook.
- **Every video credits Beyond Tahir** — see `CREDITS.md` for the exact lines.
- **Saudi Arabia rule (compulsory, all posts):** never say anything bad or
  negative about Saudi Arabia in any video, caption, description or comment.
- **AEO + SEO + GEO are mandatory** on every video on every platform, with
  hashtags. A gate fails if answer-first lines or hashtags are missing.
- **Verify the signed-in account before posting.** Browser route: verify the
  username shown before acting; any other account → STOP, post nothing, report
  it. API route: approval workflow (Track 1) governs.

## Track 1 — Social publishing, Graph API route (facebook-instagram)

Source: `facebook-instagram/` (3 files). Official Meta Graph API posting for
Facebook Pages + Instagram Business accounts (facebook-sdk).

- **Approval is mandatory on this route.** Drafts first, the user approves, then
  publish. Never auto-post via the API. (Contrast Track 3: Viral Daily keeps its
  own post-straight-away rule for @viraldaily.official ONLY, browser-only. The two rules
  are scoped by route, not in conflict.)
- **Stale version + unqualified claim — noted, not fixed silently.** The skill
  targets Graph API **v18.0**, which is stale — re-verify the current version
  before building on it. Its SCOPE-NOTE says a "Page token never expires";
  that claim is unqualified — long-lived Page tokens are not unconditional, so
  verify expiry/refresh behaviour before relying on it.
- **Account claims need re-verification.** The SCOPE-NOTE's account claims are
  dated 2026-11-08 (Page "Usama Stories", Instagram @animevalleystories, 14
  posts, connector states). Account states change — re-verify before acting on
  them.
- **Merge fix:** `SKILL.md` Step 2 linked `../FACEBOOK_GRAPH_API_SETUP.md` — the
  file is in the SAME directory. Fixed to `FACEBOOK_GRAPH_API_SETUP.md` (2
  occurrences). The setup guide largely duplicates the SKILL.md install / token /
  code steps; it is kept whole, with a one-line pointer at its top saying the
  SKILL.md is canonical.
- **Until tokens exist, the API route cannot post.** No Meta developer app and no
  tokens exist yet: keep using the browser route for Facebook/Instagram posting
  and do not claim the API route works. Tokens go via the Secure Vault flow only
  — NEVER in chat, NEVER stored in a file or in memory.

## Track 2 — Instagram Reel cover correction

Source: `social_publishing_instagram_cover/` (2 files). An amendment to the
`social_publishing` skill: prevent losing a published Instagram Reel when
changing its cover by reposting with a cover instead of deleting the original
first.

- **Rule:** never delete the original Reel first. Publish the covered
  replacement and verify it live, then — and only then — deal with the original.
- **Provenance preserved verbatim** in `social_publishing_instagram_cover/skill.yaml`:
  amends skill `social_publishing`, reviewed_revision
  `60ab6d283492083d4687a666a67fe45893659c840b7c8b31921960ba2f92e3aa`, reviewed
  2026-11-13, review_after 2026-12-13, rationale as written in the file. The base
  skill itself is not in this repo — this amendment stands alone here.

## Track 3 — Viral Daily runbook (@viraldaily.official)

Source: `viral-daily/SKILL.md` (1 file), kept WHOLE as this track's runbook.
Second Instagram account, SEPARATE from Anime Valley Stories. Never post brand
content here. Display name "Viral Daily", bio "Viral videos from all over the
world 🌍 New trending reels every day 🔥". Username is viraldaily.official —
renamed by the user Sun 2026-11-15 ~19:32 (was @usamabkr85; old name no longer
exists).

- **Post straight away — @viraldaily.official ONLY, browser-only.** Do not show the user
  first, do not wait for approval. Route: BROWSER only (the Instagram connector
  does NOT list this account). Switch to @viraldaily.official and VERIFY the username
  shown is viraldaily.official BEFORE posting. Any other account → STOP. This rule does
  NOT extend to the Graph API route (Track 1) or to brand accounts.
- **Check every 5 hours.** Each run is a CHECK first — post only when something
  new is spiking. Daily minimum: at least ONE reel per day (first run of the day
  posts the strongest topic even if not brand-new). No daily maximum.
- **REA-first:** before making a reel, break down the TOP competitor reel on the
  same trend with rea-video (see `video-craft/SKILL.md` Track 3), then build our
  own reel in the same format. Never repost.
- **Quality bar:** 8–10 visuals, a new visual every 3–4 s, varied motion,
  word-by-word captions with the key word highlighted, SFX on cuts + music, max
  ~30 s, hook first. If it feels like a slideshow, remake it. **Open question
  (unanswered):** whether Nate Herk's 1.1–1.4 s tightening applies here — keep
  the 3–4 s bar until the user says otherwise.
- **Real footage rule:** clips of someone else's video MAX 5 seconds each, speed
  changed in between; free-licence stock video (Pexels, Pixabay, Mixkit, Coverr)
  also fine; generated images only where no real footage fits; never post
  someone else's whole video as-is.
- **Reel structure (standing):** banner first, then alternate real video and
  animated clips (real first, then animated, then real, then animated), end with
  "Please follow, like, share and comment".
- **Voice rule (standing, all videos):** add voice in ALL new videos — no
  music-only new videos.
- **"What the winners taught us"** in the original is a condensation of the
  creator lessons — it now points to `video-craft/SKILL.md` Track 4 instead of
  duplicating them. The FilmCraft Part 7 process section likewise points to
  `video-craft/SKILL.md` Track 1; only the Viral Daily-specific adaptations
  (parallel split, −14 LUFS, crf 23, ffmpeg allowed for plain joins) stay in the
  runbook.
- **Geolyth "Last 24 Hours" roundup — STATUS: COMPLETED as a launch.** Roundup
  #1 went live Sat 2026-11-14 ~08:19 AST (60.8 s) and the full-channel watch of
  all 14 Geolyth videos is done. The daily job continues: EVERY 24 HOURS, one
  roundup ~07:00 AST on @viraldaily.official, in the Geolyth pattern (one continuous 3D
  globe/map, colour-coded countries, identical intro, 5–8 stories, no outro,
  calm ~150 wpm voiceover, banners/cards only, pop SFX, no music bed).
  FACT-CHECK is compulsory: every fact verified against at least two reputable
  sources; unverified items left out, never guessed. **Their weak points — NOT
  copied:** dates disagree (chip vs audio vs post date); numbers drift with no
  correction; segments reposted verbatim. **Our edge: subtitles + date/number
  discipline** — one locked date format stated in audio, on screen and in
  caption, matching the day covered; one source of truth for running figures;
  never repost a segment as a new video. Full recipe:
  `~/workspace/second-instagram/geolyth-pattern/GEOLYTH-PATTERN.md` — that file
  lives OUTSIDE this repo; read it before building a roundup. Each day's roundup
  is a DITTO COPY of the reference video the user gives, with only a SLIGHT
  colour change.

## Track 4 — Book publishing (beyond-words)

Source: `beyond-words/` (116 files). Amazon KDP book production: niche
research, writing, covers, publishing, ads. For books, not videos.

- **Attribution gap — recorded honestly.** beyond-words has NO in-skill
  attribution to Beyond Tahir. None is invented here. What is carried verbatim:
  the repo-root README credit, `beyond-words/LICENSE.txt` (MIT, "Copyright (c)
  2026 Beyondwords contributors") and
  `beyond-words/modules/beyondwords/CREDITS.md`. See `CREDITS.md`.
- The repo-root MIT (Copyright (c) 2026 Muhammad Usama) covers ONLY Usama's own
  contributions; it does not cover this skill's contents.

## Track 5 — Story writing (oh-story)

Source: `oh-story/` (3 files). Short-story writing: emotion first, one core
point, strong opening, lingering ending. Metadata source
https://github.com/zenstory-ai/oh-story-claudecode, version 1.0.0. No LICENSE
in staging — flag before republishing.

- **Not runnable as staged — stated honestly.** The skill's mandatory pre-read
  table demands ~20 reference files (`workflow-design.md`, `short-craft.md`,
  `genre-styles/{...}.md`, `emotional-methods.md`, …) that are ABSENT from this
  repo; they live in `~/workspace/oh-story-claudecode`, outside the repo. The
  skill's own rule is: missing files → stop, do not create or modify story
  product. Do not present it as complete.
- **The usable part, kept whole here:** the 5 writing principles — (1) emotion
  first, everything serves the target feeling; (2) one core point per story,
  no multi-threading, no worldbuilding sprawl; (3) every sentence must earn its
  place; (4) strong opening, lingering ending; (5) default first person. Use
  these with the Anime Valley tone; keep the Green Valley girl unnamed.
- Also kept: `story-router.md` (routing) and `SCOPE-NOTE.md`.

## Track 6 — Virality prediction (viral-prediction)

Source: `viral-prediction/` (2 files), added in the weekly sync of 2026-11-16.
Score a video idea or a hook before posting, using ONLY free virality
prediction tools — never pay for a score, a credit pack, or a trial that asks
for a card. Free tiers change without warning: re-check the tool's own page
before relying on any limit.

- **Score the idea before filming** (PreViral, 3 idea scores/month) and the
  **hook before posting** (Virality Predictor, Virality Labs, Virality AI, quso,
  StoryCut, Otto — one-time grants and monthly caps in the skill; Google Trends
  for whether interest is rising or already gone). Cut 2–3 hook takes of the
  same video, score each, post the best-scoring take with the cleanest Kallaway
  diagnostic. Never score a whole 5-minute film — every free clip scorer is
  built for short clips.
- **A score never skips the gate or the jury.** A high score never skips the
  ten-agent gate; a low score never kills a video the jury passed. A score is a
  comparison between your own takes, never a promise of views.
- **Local scorer (free, on-machine) — NOT shipped in this repo.** The skill
  describes a local scorer built from the REA breakdown of
  viralitypredictor.net (ffmpeg + Whisper + OpenCV, no sign-in, no credits,
  nothing leaves the machine). Its code lives outside the skill directory
  (`~/workspace/viral-prediction/scorer/`) and is NOT part of this repo — the
  external free tools above are the portable part. Use the local scorer first
  when you have it; save the one-time external grants for the biggest uploads.
- **Privacy:** never upload unreleased footage to a tool that trains on uploads
  (Higgsfield is excluded for this reason); prefer tools that delete uploads
  and never train on them. Score the hook clip only, never the full film.
- **Tools that fail the free-only rule:** Higgsfield Virality Predictor (paid
  credits now), Opus Clip (score is Starter/Pro only), StreamLadder ClipGPT
  (7-day trial, no free tier), Vizard (score never appears per clip). Do not pay
  to unlock any of these.

## What came from where

| Original skill | Files | Lives at | Role in this merged skill |
| --- | --- | --- | --- |
| facebook-instagram | 3 | `facebook-instagram/` | Track 1 — Graph API publishing route |
| social_publishing_instagram_cover | 2 | `social_publishing_instagram_cover/` | Track 2 — Reel cover correction |
| viral-daily | 1 | `viral-daily/` | Track 3 — Viral Daily runbook (whole) |
| beyond-words | 116 | `beyond-words/` | Track 4 — KDP book publishing |
| oh-story | 3 | `oh-story/` | Track 5 — story writing (appendix; pre-reads absent) |
| viral-prediction | 2 | `viral-prediction/` | Track 6 — free virality prediction (local scorer not shipped) |
| **Total** | **127** | | |
