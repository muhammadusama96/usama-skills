---
name: video-craft
description: Make story films and reels end to end — Sumi watercolour-anime films (FilmCraft-from-scratch Part 7, current default), fast reel edits in the Herk house style, reverse-engineering any video with rea-video, creator lessons from Nate Herk / Sirio Berati / Jeff Su, SVG art, and ZSky true-motion clips. Use when building, editing, studying or fixing a video of any kind.
---

# video-craft

One skill for making videos, merged 2026-11-14 from five originals: `sumi`,
`herk-edit-kit`, `rea-video`, `ai-creators-lessons`, `sumi-svg`. A sixth
original, `zsky_motion`, was added in the weekly sync of 2026-11-23 as
Track 6. Every original is preserved whole under its own subfolder below; this file is the router and
the shared rules. When this file and a sub-skill disagree, the scoped rule in
"Shared rules" below wins — it records the decision made at merge time.

> **Credit — Beyond Tahir.** The Sumi film studio in this skill (`sumi/`,
> `sumi-svg/`) is the work of **Beyond Tahir** — @beyondtahir —
> https://www.youtube.com/@beyondtahir · https://www.instagram.com/beyondtahir ·
> https://github.com/beyondtahir. Every video made with it credits him; see
> `CREDITS.md` for the exact credit lines.

## Which job is this?

| Job | Track | Start here |
| --- | --- | --- |
| A gentle story film (Anime Valley style, any length) | 1 — Story films (sumi) | `sumi/SKILL.md` + `sumi/references/green-valley-playbook.md` |
| A fast reel / talking-head edit | 2 — Reel edits (herk-edit-kit) | `herk-edit-kit/SKILL.md` |
| Copy a video's format shot by shot | 3 — Reverse-engineering (rea-video) | `rea-video/SKILL.md` (Chinese originals; read the English summary below) |
| How the best creators actually work | 4 — Creator lessons | § "Track 4" below + `ai-creators-lessons/SKILL.md` |
| SVG / vector art for a film | 5 — SVG art (sumi-svg) | `sumi-svg/SKILL.md` |
| True-motion clip from a still image | 6 — ZSky motion (zsky_motion) | `zsky_motion/SKILL.md` |
| Title/poster frame or subscribe banner | Track 1 (films) or Track 2 (reels) | Poster + banner are bookends for films; reels open on the hook, no card |

## Shared rules (apply to every track)

- **Never invent numbers or results.** If a figure would strengthen a claim and
  you do not have one, ask for it or write the line without it. (Stated once
  here; the same rule appeared in youtube-agent, the Beyond trio and
  ai-creators-lessons — all point here now.)
- **Current build default: FilmCraft-from-scratch, Part 7.** Every scheduled
  video is built from scratch in FilmCraft through the Part 7 process: parallel
  agents (script, voice, poster/banner, clips, captions, metadata), cloned voice
  Whisper-checked, captions burned, poster + subscribe banner bookends fresh per
  story. The older built-in video-generator chained-clip method is **HISTORICAL /
  superseded**: that generator is blocked (lasting 403, country/region) and
  Kaggle was abandoned by the user 2026-11-14. `sumi/references/green-valley-playbook.md`
  and `sumi/references/real-anime-video-loop.md` carry a HISTORICAL banner at the
  top and are kept as the record of what was proven — do not follow them as the
  build route.
- **Character consistency is a mandatory check.** Compare the same character
  across every shot (relative height, build, face, clothes) and every clip's
  rendering style/quality side by side. Lock relative height in every clip
  prompt. Sirio Berati's 5-image character sheet (Track 4) is the upgrade from a
  locked text description: build one for every locked character and use it as the
  image reference for every clip.
- **Shot length is scoped by format — there is no single number.**
  - Reels (Herk / Nate, measured): shots **1.1–1.4 s**, first cut 0.6–1.0 s.
  - Story films (sumi): clips **~10 s** each, chained in story order.
  - Viral Daily reels: a new visual every **3–4 s**.
  - Open question (unanswered): whether Nate's 1.1–1.4 s tightening applies to
    Viral Daily. Keep the 3–4 s bar until the user says otherwise.
- **Voice speed is scoped by format.** For story films, sumi wins: the voice may
  be sped up *a little* so narration and video match exactly, while still
  sounding natural (newer rule, user-ordered). For reel edits, Herk's rule
  stands: **never speed the voice up** — plan the story first instead.
- **Intro/outro cards are scoped by format.** Story films: mandatory poster
  frame first (voice speaks the title) and subscribe banner last (voice speaks
  the banner words over light music). Reels: **no intro/outro card**, speech
  within 0.1 s, file ends right after the last word.
- **Speech pace is scoped by context.** Narration estimates run ~**150 wpm**
  (yt-script estimate; Geolyth roundups are also ~150 wpm, calm newsreader
  pace). Nate's reels measure **240–282 wpm** (4.0–4.7 words/second). Both are
  correct — in their own context. Do not quote one as the general rule.
- **On-screen text stays short.** Thumbnail text: max 5 words for Anime Valley
  brand work (standing user rule); max 3 words is the generic default
  (yt-package). Captions: short lines only, never long blocks over a scene.
- **Every video credits Beyond Tahir** — see `CREDITS.md` for the exact lines.
- **Saudi Arabia rule (compulsory, all posts):** never say anything bad or
  negative about Saudi Arabia in any video, caption, description or comment.
- **AEO + SEO + GEO are mandatory** on every video on every platform, with
  hashtags; a gate fails if answer-first lines or hashtags are missing.
- **Upload gate:** the ten-agent gate + jury still governs uploads; upload only
  jury-PASS videos. Viral Daily reels use their own light check instead (see
  `publish/`).

## Track 1 — Story films (sumi)

Source: `sumi/` (230 files), Beyond Sumi by Beyond Tahir. A guided local film
studio in exactly three styles — **Sumi Original, Sumi Light, Sumi Dark** — with
story, direction, artwork, animation, narration, local sound and review.

- **Styles and motion clocks (kept distinct, do not unify):** Original —
  30 fps / 20 designed character states per animated second. Light and Dark —
  24 fps / paired character states up to 12 changes/s. Dark is not a recoloured
  Light; preserve each identity.
- **Green Valley Playbook is the DEFAULT for this kind of video** (user decision
  2026-11-01): `sumi/references/green-valley-playbook.md` — gentle story, character
  movement, supplied voice, synced captions and music. The girl in Green Valley
  stays unnamed.
- **Standard procedure, every video:** (1) title/poster frame first — the
  poster is the hook (POSTER HOOK RULE, 2026-11-15, from Kallaway): the most
  shocking single frame + a 3–5 word bold overlay that IS the contrast, voice
  speaking the 3-beat lean line (Lean → "but…" → Snapback) with the title inside
  it, not the title alone; a title-only poster is the weakest hook; (2) story
  untouched in between; (3) subscribe/follow banner last, voice speaking the
  banner words over light music. Poster and banner are made FRESH per story,
  never reused. If a platform allows no separate thumbnail, bake a poster frame
  into the video at a known timestamp.
- **Narration direction (2026-11-15):** write and deliver the narration for ONE
  real listener — a specific person, FaceTime energy, calm, like telling a
  friend a story, never loud or performative. **Chatterbox runs must be
  STAGGERED, never parallel:** each generation holds ~3 GB RAM and parallel
  runs OOM-kill each other on this 6 GB VM — one voice generation at a time.
- **Joining:** join clips with the concat filter and re-encode, never `-c copy`;
  measure the voice level in every segment.
- **Narration routing:** ElevenLabs, Voicebox, the user's own recording, or none
  — see `ai-services/` for the voice routes. Urdu narration is written in Roman
  Urdu (never Urdu script) and every voice sample is transcribed and checked
  with Whisper before it reaches the user.
- **Archived styles:** `sumi/references/styles/` holds 9 archived files (flow,
  grain, mist, noir, print, scenic, sketch, sumo, wash) labelled historical —
  kept as-is, not menu choices. Consult them only when recovering a technique.

## Track 2 — Reel edits (herk-edit-kit)

Source: `herk-edit-kit/` (126 files), by Nate Herk. Transcript-driven cuts,
reusable motion graphics, local HyperFrames rendering.

- **House numbers (reels only):** speech within 0.1 s; shots 1.1–1.4 s, first cut
  0.6–1.0 s; captions 1–3 words per chunk, bold all-caps, ~62–64 px; music ~11 dB
  under voice; master near −14 LUFS, true peak ≤ −1.5 dBTP. Every shot must
  move — an AI still used as B-roll is a build error.
- **Edit order:** transcribe (word-level timestamps) → cut retakes → cut between
  phrases, never inside one; never speed the voice up → plan the story first →
  source B-roll, one visual per noun phrase → build → mix → render draft →
  check → final. Check before delivery: re-transcribe the final render and
  compare words at every cut; frame strips across every cut.
- **Every correction becomes a permanent skill rule.** "Fix it, then add this to
  the skill so it never happens again." Never give the same note twice.
- **Note:** the kit's `SKILL.md` says its 15 sub-skills are symlinked; in this
  repo they are real directories, not symlinks. Do not re-symlink them.
- **Vendored history:** the largest file, the Linear.app promo plan
  (`docs/superpowers/plans/2026-04-17-linear-promo-implementation.md`, 2,675
  lines), was moved to `herk-edit-kit/archive/` — it is vendored history, not
  editing guidance.

## Track 3 — Reverse-engineering (rea-video)

Source: `rea-video/` (10 files), by JuneYaooo. Shot-by-shot breakdown of any
video into structure, pacing, captions, music/SFX and a rebuild plan.

- **The originals are Chinese-only** (`SKILL.md` + all 9 references) and are kept
  whole under `rea-video/`. This merged skill covers the tool in English.
- **Default: `--lang en`.** Run decomposes with `--lang en` unless the user asks
  for Chinese output.
- **REA-first rule (Viral Daily):** before making a reel, break down the top
  competitor reel on the same trend with rea-video, learn its format, then build
  our own reel in the same format with our own images, words and edit — same
  style and structure, never their footage or audio as-is.

## Track 4 — Creator lessons (ai-creators-lessons)

Source: `ai-creators-lessons/SKILL.md` (1 file). Lessons from Nate Herk, Sirio
Berati and Jeff Su, deepened 2026-11-13 from full transcripts and rea-video
breakdowns.

- **Nate Herk — reel numbers (§2–3 of the original):** folded into Track 2
  above (the Herk track), since they duplicate the herk-edit-kit house numbers.
  The original file is kept whole; read Track 2 first for the numbers.
- **Nate Herk — the loop (§1):** every correction becomes a permanent rule;
  brief agents with "ask me clarifying questions one at a time until you are 95%
  confident"; automation proposes, a human (or jury) disposes; keep a standing
  Roast Room panel of reviewers fed with real data. A skill is a recipe: name of
  the dish, ingredients, steps, finished output.
- **Sirio Berati — 5-image character sheet (§4):** rotation sheet, headshot,
  full body, side profiles, features grid — built from one base image, used as
  the reference for every clip. This is the character-consistency upgrade for
  Track 1: build a sheet for every locked character (Buster, Pip, the Green
  Valley girl, the new guard dog). Tools named in his video (Nano Banana 2, Kora
  Reality, Seedance 2, Enhancor V4, lastframe.ai) are ones we do NOT have
  accounts for — use the method with the tools we do have.
- **Sirio Berati — motion-graphics boards (§5):** 74 animated HTML boards
  (MIT repo, cloned 2026-11-13), Whisper → board-brief → board-system →
  board-sync → export. Export TESTED and working. Boards are 1920×1080
  landscape — build vertical variants for 9:16 reels.
- **Jeff Su — prompting (§7, own short section):** every prompt carries all six —
  **Task / Context / Exemplars / Persona / Format / Tone**. Intent Check before
  big jobs (have the AI repeat your intent back and propose a plan first).
  Markdown Shortcut: give AI Markdown instead of PDF (up to 90% smaller).
  Folder Map: an INDEX.md per folder so the AI checks the index first. Never
  paste an API key into a prompt — OS keychain / credential manager only.
  Titles (§9, measured over 2 years): what-happened/did titles hit 38% vs 15%;
  name the tool in the title; apply only where honest.
- **Still to test:** Sirio / Jeff full rea-video decomposes were NOT run (one 60 s
  decompose took 23 min; full videos OOM this machine). Their visual lessons come
  from frame grids and scene counts instead — recorded honestly in the original.
- **Five content-growth creators (§13, added 2026-11-15, from the Dua reel):**
  Varun Mayya (distribution > product; trust through repetition), AniThing /
  Aninda Chakraborty (story first, gear second; confidence comes from knowing
  the story), Kane Kallaway (the hook is the 80/20 — 3-beat formula: Context
  Lean → Scroll-Stop Interjection → Contrarian Snapback; 4-mistake diagnostic:
  Delay, Confusion, Irrelevance, Disinterest; 6 archetypes picked from the key
  visual), Mino Lee (one real ideal viewer; calm FaceTime energy; SLC captions
  — Short, Large, Clear), Tatsuki (sustainability is how you get consistency).
  The hook agent runs Kallaway's diagnostic + the poster-hook rule from the
  next productions onward; Viral Daily rotates the hook archetypes.

## Track 5 — SVG art (sumi-svg)

Source: `sumi-svg/` (8 files), Beyond Sumi by Beyond Tahir. SVG studio for
original artwork in the three Sumi styles.

- **Frame rates differ by style guide — keep them distinct, do not unify:**
  Original 30 fps / 20 states per second; Light and Dark 24 fps / 12 changes
  per second. Each guide is authoritative for its own style.
- SVG is the user's explicit choice, or a disclosed fallback when image
  generation is unavailable. Do not silently downgrade a painted film.

## Track 6 — ZSky motion clips (zsky_motion)

Source: `zsky_motion/` (2 files), added in the weekly sync of 2026-11-23.
The working free route for true motion in key shots: image-to-video clips
from ZSky (https://zsky.ai/), no credits, no daily cap, 5 seconds per clip.
Use it when a shot needs real movement; stills with Ken Burns motion are
only for shots where true motion is not needed, and say so plainly.

- **Prompt rules:** repeat the locked character description and the locked
  watercolour anime style in every prompt; lock relative height when two
  characters appear together. Never name a girl or a young man or a young
  woman — the safety filter refuses those prompts or renders scene-only
  clips; describe two characters together as "two friends". Avoid the word
  "kneel" (refused in testing); "sit beside" is the untested retry.
- **Hide, download, trim:** hide every creation from Explore as soon as it
  appears (creations are visible by default); download promptly — free clips
  are deleted after 7 days. Trim every clip to 5.0 seconds before assembly:
  each clip carries a black zsky.ai end card for about the last 1.75 seconds.
  Confirm the trimmed clip has no end card and no badge inside the picture.
- **Check before assembly:** sample frames across the whole clip and confirm
  the motion is real movement, not only a camera pan over a still; compare
  side by side with the other clips for style and character design. A clip
  that loses its people or changes face/style is rejected and regenerated.
  ZSky clips still go through the normal Sumi gate — no skipping the
  character-consistency and animation-quality checks.
- **Alternatives:** Google Flow with Veo 3.1 for a small number of key shots
  when its setup is ready (no watermark, about five short clips a day).
  Never retry the blocked built-in video generator for a motion shot and
  never start Kaggle work for one.

## What came from where

| Original skill | Files | Lives at | Role in this merged skill |
| --- | --- | --- | --- |
| sumi | 230 | `sumi/` | Track 1 — story films, playbook, three styles |
| herk-edit-kit | 126 | `herk-edit-kit/` | Track 2 — reel edits, house numbers |
| rea-video | 10 | `rea-video/` | Track 3 — reverse-engineering (Chinese originals) |
| ai-creators-lessons | 1 | `ai-creators-lessons/` | Track 4 — creator lessons (Nate / Sirio / Jeff) |
| sumi-svg | 8 | `sumi-svg/` | Track 5 — SVG art, three style guides |
| zsky_motion | 2 | `zsky_motion/` | Track 6 — ZSky true-motion clips |
| **Total** | **377** | | |
