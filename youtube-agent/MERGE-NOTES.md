# youtube-agent — merge notes (2026-11-14)

Merged from: youtube-agent (24) + youtube-automation (2) = **26 files**, all
preserved whole under their original names. The merged skill keeps the name
`youtube-agent`.

## What was deduplicated

- **"Before you write" blocks** — the study reports said the verbatim block was
  repeated across 9 of 11 sub-skills. Actual count in staging: the verbatim
  two-item block ("Read `~/.claude/youtube/voice.md`…" + "Never invent a
  number…") appears in **6** files (yt-audit, yt-comment, yt-package, yt-plan,
  yt-script, yt-seo). The other 5 sub-skills never carried it. Collapsed into
  ONE shared section ("Shared: before you write") in the merged `SKILL.md`;
  the 6 files now point to it. Note the path correction inside the shared
  section: the voice profile is `youtube-agent/voice.md` in this repo, not
  `~/.claude/youtube/voice.md`.
- **Closing "gate" paragraphs** — verbatim in **all 11** sub-skills ("Nothing
  here publishes… ship it, or change it?"). Collapsed into ONE shared section
  ("Shared: the gate") in the merged `SKILL.md`; all 11 files now point to it.
- **"Never invent numbers/results"** — stated once in the shared section; the
  same rule appears once per merged skill elsewhere.

## Conflict decisions

| Conflict | Decision |
| --- | --- |
| Thumbnail words: yt-package max 3 vs Anime Valley standing rule max 5 | 5 wins for brand work; 3 kept as the generic default, scoped and labelled. |
| Speech pace: 150 wpm (yt-script narration estimate) vs 240–282 wpm (Nate reels measured) | Scoped by context, both labelled. |

## Other notes

- **youtube-automation is a hollow shell.** Its `SKILL.md` is upstream
  marketing copy with zero implementation files. Preserved whole as a
  sub-document; the merged `SKILL.md` routes usage ONLY to the
  metadata/subtitle sliver per its `SCOPE-NOTE.md` (vidIQ-style SEO metadata,
  subtitle placement, short on-screen text). Faceless presets, neural voices
  and the 100-day scheduler stay explicitly out of scope.
- **Project artefacts kept in place:** `youtube-agent/skills/yt-script/
  hooks-buster-pip-ep1.txt` and `hooks-buster-pip-ep2.txt` are Anime Valley
  project artefacts, not generic guidance. Noted in the merged `SKILL.md`.
- The 11 sub-skills each run as their OWN subagent when used — never two in
  one agent. The six Python tools run on plain Python 3, no extra libraries.
