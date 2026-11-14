# youtube-agent — YouTube Agent Skill pack (installed 2026-11-08)

Free MIT-licensed pack of 11 Claude skills for YouTube work, by Jake Schincariol.
Source repo: https://github.com/Jakeschincariol/youtube-agent-skill (cloned to
`~/workspace/youtube-agent-skill/`; upstream README kept as `README-upstream.md`).
No signup, no API key, nothing connects to the YouTube account.

## Scope note (this environment — read first)

- The 11 skills live in `skills/yt-*/` below, each with its own `SKILL.md`. Use a skill by
  reading its `SKILL.md` and following it. Each skill runs as its OWN subagent when used
  (one agent per skill, like the ten-agent gate) — never run two skills in one agent.
- The voice profile the skills read is `voice.md` in THIS folder (in this environment it is
  NOT `~/.claude/youtube/voice.md` — read the one here). Every skill must read it before writing.
- The six Python tools run on plain Python 3 with no extra libraries. Run each from inside its
  own skill folder, e.g. `cd skills/yt-script && python3 hookscore.py --hook "one line"`.
- **These skills do NOT replace the standing ten-agent + jury upload gate.** They help with
  scripts, hooks, titles, thumbnails, descriptions/tags, Shorts ideas, viral research and
  planning. Every upload still needs the full gate and a jury PASS.
- **Nothing in this pack uploads, schedules or posts.** The original repo has no publish
  skill. Uploads stay via the browser, as now. Never add an upload step from this pack.
- **Anime Valley rules override the pack's defaults:** gentle third-person anime stories;
  the girl in Green Valley stays unnamed; on-screen text stays short (thumbnail text max
  5 words, captions short lines); every video gets the poster + subscribe-banner bookends;
  never promise virality or invent numbers.

## The eleven

| skill | what it does | tool |
| --- | --- | --- |
| `yt-script` | One idea into a script: five hooks off 21 formulas, scored, then the spoken script with retention beats marked. | `hookscore.py` |
| `yt-package` | Title and thumbnail as one pairing, linted for truncation, duplication and vagueness. | `title.py` |
| `yt-edit` | A transcript into an edit decision list: dead air, filler cues, retakes, with timecodes. | `deadair.py` |
| `yt-comment` | The comment section triaged into four piles, then replies in the channel's voice. Says which one to pin. | — |
| `yt-plan` | A week that fits the hours actually available. One anchor, one cheap one, three Shorts. | — |
| `yt-viral` | What is working in the niche, ranked by how far each video beat its own channel's median. Reads public listings only, never logs in. | `swipe.py` |
| `yt-retention` | A retention export read properly: hook leak, the cliffs, the slide, and what to change. | `retention.py` |
| `yt-shorts` | The Shorts already inside a long video, with a new first line written for each. | — |
| `yt-seo` | The description, the tags worth having, and the three queries this should win. | — |
| `yt-chapters` | Chapters from a transcript, validated against YouTube's own rules so they render. | `chapters.py` |
| `yt-audit` | The whole channel, ending in ONE fix rather than twenty. | — |

## Honest limits (from the pack itself)

- `hookscore.py` is a heuristic calibrated on 74 hooks, not a predictor of views. A low score
  is a reason to look again; a high score is not a promise.
- Tags barely matter; the pack says so instead of selling a tag generator.
- Nothing invents a number. If a skill wants a figure it does not have, it asks or writes the
  line without it.
