---
name: youtube-agent
description: YouTube writing, research and packaging only — scripts, hooks, titles, thumbnails, descriptions/tags, Shorts ideas, viral research and planning. Use when writing or packaging a YouTube video or Short. Nothing here uploads, schedules or posts.
---

# youtube-agent

Merged 2026-11-14 from two originals: `youtube-agent` (Jake Schincariol's free
MIT pack of 11 skills) and `youtube-automation` (Antigravity OS, hollow shell —
see "The youtube-automation sliver" below). Every original file is preserved
whole under its own subfolder; this file is the router and the shared rules.

## Which job is this?

| Job | Sub-skill | Tool |
| --- | --- | --- |
| One idea into a script | `youtube-agent/skills/yt-script/` | `hookscore.py` |
| Title + thumbnail as one pairing | `youtube-agent/skills/yt-package/` | `title.py` |
| Transcript into an edit decision list | `youtube-agent/skills/yt-edit/` | `deadair.py` |
| Comment section triage + replies | `youtube-agent/skills/yt-comment/` | — |
| A week that fits the hours available | `youtube-agent/skills/yt-plan/` | — |
| What is working in the niche | `youtube-agent/skills/yt-viral/` | `swipe.py` |
| Read a retention export properly | `youtube-agent/skills/yt-retention/` | `retention.py` |
| Shorts already inside a long video | `youtube-agent/skills/yt-shorts/` | — |
| Description, tags, three queries to win | `youtube-agent/skills/yt-seo/` | — |
| Chapters from a transcript | `youtube-agent/skills/yt-chapters/` | `chapters.py` |
| The whole channel, ending in ONE fix | `youtube-agent/skills/yt-audit/` | — |
| SEO metadata + subtitle placement only | `youtube-automation/` (sliver — see below) | — |

Each sub-skill runs as its OWN subagent when used (one agent per skill, like
the ten-agent gate) — never run two skills in one agent. The six Python tools
run on plain Python 3 with no extra libraries, each from inside its own skill
folder, e.g. `cd youtube-agent/skills/yt-script && python3 hookscore.py --hook "one line"`.

## Shared: before you write

(Collapsed here at merge time from the verbatim block that was repeated across
the sub-skills. Each sub-skill now points here instead of carrying its own copy.)

1. Read the voice profile first. In this environment it is
   `youtube-agent/voice.md` inside this merged skill (the original skill's own
   folder) — NOT `~/.claude/youtube/voice.md` as the upstream text says. That is the user's voice profile: how they talk on camera, the
   words they never use, who they are talking to, what they will not claim. If
   it does not exist, ask for **three of their own videos**, read or transcribe
   them, infer the voice, and write the file. A script in the wrong voice is
   worse than no script, because they have to read it out loud.
2. **Never invent a number, a result or a source.** If a figure would strengthen
   it and you do not have one, ask for it or write the line without it. (Stated
   once here; the same rule appears in video-craft, beyond-growth and
   ai-creators-lessons.)

## Shared: the gate

(Collapsed here at merge time from the verbatim closing paragraph repeated
across all 11 sub-skills. Each sub-skill now points here.)

Nothing here publishes. These skills write and you publish. Every output ends
in a block the user copies, and the last line of every run is the question:
**ship it, or change it?**

These skills do NOT replace the standing ten-agent + jury upload gate. They
help with scripts, hooks, titles, thumbnails, descriptions/tags, Shorts ideas,
viral research and planning. Every upload still needs the full gate and a jury
PASS. Nothing in this pack uploads, schedules or posts. Uploads stay via the
browser.

## Anime Valley rules override the pack's defaults

- Gentle third-person anime stories; the girl in Green Valley stays unnamed.
- On-screen text stays short: thumbnail text max **5 words** for brand work
  (standing user rule) — the pack's **3-word** ceiling (yt-package) stays the
  generic default for non-brand work. Both numbers are kept, scoped and
  labelled; do not quote one as the only rule.
- Every video gets the poster + subscribe-banner bookends (see
  `video-craft/SKILL.md`).
- Never promise virality or invent numbers. `hookscore.py` is a heuristic
  calibrated on 74 hooks, not a predictor of views. Tags barely matter; the pack
  says so instead of selling a tag generator.

## Speech pace — scoped by context

- Narration estimates: ~**150 wpm** (yt-script's estimate for spoken scripts).
- Nate Herk's reels, measured: **240–282 wpm** (4.0–4.7 words/second).
- Both are correct in their own context. Use 150 wpm for film narration
  estimates, 240–282 wpm for fast reels. Do not quote one as the general rule.

## The youtube-automation sliver

`youtube-automation/` is a hollow shell: its `SKILL.md` is upstream marketing
copy with zero implementation files. It is preserved whole as a sub-document,
but this merged skill routes usage ONLY to the metadata/subtitle sliver per its
`SCOPE-NOTE.md`: vidIQ-style SEO metadata (curiosity question titles that stay
true, 3-paragraph keyword descriptions, playlist routing), subtitle placement
that avoids collisions, and short on-screen text. The rest — video generation,
faceless-channel presets, neural voice replacement, 100-day autonomous
scheduling — stays explicitly OUT of scope. Anime films stay anime, made from
the Sumi playbook.

## Project artefacts (not generic guidance)

`youtube-agent/skills/yt-script/hooks-buster-pip-ep1.txt` and
`hooks-buster-pip-ep2.txt` are Anime Valley project artefacts — the actual hook
lists written for Buster & Pip Episodes 1 and 2. They are kept in place for
provenance. Do not treat them as generic hook guidance; the generic guidance is
`hooks.json` and the 21 formulas in `yt-script/SKILL.md`.

## Honest limits (from the pack itself)

- A low hook score is a reason to look again; a high score is not a promise.
- Nothing invents a number. If a skill wants a figure it does not have, it asks
  or writes the line without it.

## What came from where

| Original skill | Files | Lives at | Role in this merged skill |
| --- | --- | --- | --- |
| youtube-agent | 24 | `youtube-agent/` | The 11 sub-skills + voice profile + tools |
| youtube-automation | 2 | `youtube-automation/` | Metadata/subtitle sliver only (see above) |
| **Total** | **26** | | |
