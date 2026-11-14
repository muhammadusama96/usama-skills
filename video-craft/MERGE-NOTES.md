# video-craft — merge notes (2026-11-14)

Merged from: sumi (230) + herk-edit-kit (126) + rea-video (10) +
ai-creators-lessons (1) + sumi-svg (8) = **375 files**, all preserved whole
under their original names.

## What was deduplicated

- **"Never invent numbers/results"** — appeared in youtube-agent, the Beyond
  trio and ai-creators-lessons. Stated once in this skill's "Shared rules";
  the other merged skills state it once each and cross-point. No copy was
  deleted from any original file.
- **ai-creators-lessons §2–3 (Nate Herk reel numbers) duplicate herk-edit-kit
  house numbers.** Folded into Track 2 (the herk track) in the merged
  `SKILL.md`. The original `ai-creators-lessons/SKILL.md` is kept whole; read
  Track 2 first for the numbers.
- **Sirio's 5-image character sheet** kept as its own item (Track 4) and wired
  into the character-consistency rules — it is the upgrade from sumi's locked
  text description, not a duplicate of it.
- **Jeff Su prompting** kept as its own short section (Track 4) — Task / Context
  / Exemplars / Persona / Format / Tone, Intent Check, Markdown Shortcut, Folder
  Map, never paste an API key into a prompt.

## Conflict decisions

| Conflict | Decision |
| --- | --- |
| Shot length: herk/ai-creators 1.1–1.4 s (reels) vs sumi 10 s clips (films) vs viral-daily 3–4 s | Scoped by format; no single number. Open question recorded: Nate 1.1–1.4 s tightening for Viral Daily is unanswered — keep 3–4 s until the user says otherwise. |
| Voice speed: herk "never speed the voice up" vs sumi "speed up a little" | Sumi wins for films (newer, user-ordered); herk rule kept for reel edits. |
| Intro/outro cards: herk "no intro/outro card, speech within 0.1 s" vs sumi mandatory poster frame + subscribe banner | Scoped by format: reels open on the hook with no card; story films keep poster + banner bookends. |
| Speech pace: 150 wpm (yt-script narration estimate) vs 240–282 wpm (Nate reels measured) | Scoped by context, both labelled. |
| Thumbnail words: yt-package max 3 vs Anime Valley standing rule max 5 | 5 wins for brand work; 3 kept as the generic default, scoped and labelled. |
| sumi playbook / real-anime-video-loop describe the built-in video-generator chained-clip method as the working method, but SKILL.md says that generator is blocked (403) and Kaggle abandoned | Both files carry a HISTORICAL / superseded banner at the top in this merged copy. FilmCraft-from-scratch Part 7 is the current default. Files kept whole as the record of what was proven. |
| sumi-svg style guides disagree on frame rate | Kept distinct, not unified: Original 30 fps / 20 states per second; Light/Dark 24 fps / 12 changes per second. |
| Herk SKILL.md claims sub-skills are symlinked; staging has real directories | Discrepancy noted in merged SKILL.md; do not re-symlink. |
| Herk's biggest file is a vendored Linear.app promo plan (2,675 lines) | Kept, moved to `herk-edit-kit/archive/` with a README noting it is vendored history, not editing guidance. |
| sumi `references/styles/` has 9 archived files (flow, grain, mist, noir, print, scenic, sketch, sumo, wash) | Kept as-is, labelled historical; not menu choices. |

## Other notes

- rea-video originals are Chinese-only; merged SKILL.md covers the tool in
  English and documents `--lang en` as the default.
- Sumi styles' motion clocks and the "smoother image-route" option (up to 24
  actual pose/in-between drawings per animated second) are recommendations, not
  genre restrictions; they require source artwork, not just changing FPS.
