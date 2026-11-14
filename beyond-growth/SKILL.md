---
name: beyond-growth
description: Get found and get clicked — website SEO, AEO and GEO plus thumbnail and poster design. Use when optimising a website, page or video to be found and answered by search and AI engines, or when designing a thumbnail, poster or social visual that earns the click.
---

# beyond-growth

Merged 2026-11-14 from two originals, both by Beyond Tahir: `beyond-seo`
(website SEO / AEO / GEO) and `beyond-artist` (thumbnail and poster design).
Every original file is preserved whole under its own subfolder; this file is
the router and the shared rules.

Credit: **Beyond Tahir** — @beyondtahir — https://www.youtube.com/@beyondtahir · https://www.instagram.com/beyondtahir · https://github.com/beyondtahir. See `CREDITS.md` for the exact lines.

> **No version is stamped on this merged skill.** The beyond-artist originals
> disagree with themselves: `SKILL.md` frontmatter says version 1.1.0 while its
> own test reports say 1.8.0. Until that is resolved upstream, no version number
> is claimed here. beyond-seo is version 2.10.0, author Muhammad Tahir Ashraf —
> Beyond Tahir (per its frontmatter).

> **Licence caution — read before republishing.** beyond-seo and beyond-artist
> ship NO licence file in this repo. The repo-root MIT (Copyright (c) 2026
> Muhammad Usama) covers ONLY Usama's own contributions — it does not cover
> these two skills. Confirm with Beyond Tahir before relying on them staying
> public or redistributing them. See `CREDITS.md`.

## Which job is this?

| Job | Track | Start here |
| --- | --- | --- |
| Website / page SEO audit or improvement | 1 — Get found (beyond-seo) | `beyond-seo/SKILL.md` |
| AEO / GEO: be the answer AI engines cite | 1 — Get found (beyond-seo) | `beyond-seo/playbooks/aeo-geo/` |
| Content, competitor or backlink work | 1 — Get found (beyond-seo) | `beyond-seo/playbooks/` |
| Thumbnail, poster or social visual | 2 — Get clicked (beyond-artist) | `beyond-artist/SKILL.md` |

## Shared rules

- **Never invent numbers or results.** Evidence first: every claim in an audit,
  a piece of content or a design rationale needs a real source — a crawl, a
  measurement, a screenshot, a cited page. If the figure is not in hand, say so
  or leave it out. (Stated once here; the same rule appears in video-craft,
  youtube-agent and ai-creators-lessons.)
- **AEO + SEO + GEO are mandatory** on every video on every platform, with
  hashtags — answer-first lines up front, keywords in plain language, identity
  kept, hashtags at the end. A gate fails if answer-first lines or hashtags are
  missing. The same discipline applies to the personal showcase website and to
  GitHub repos (meta / JSON-LD / structured data only — never change the
  website's look).
- **Saudi Arabia rule (compulsory, all posts):** never say anything bad or
  negative about Saudi Arabia in any post, caption, description or comment.

## Track 1 — Get found (beyond-seo)

Source: `beyond-seo/` (135 files), version 2.10.0, author Muhammad Tahir
Ashraf — Beyond Tahir.

- **Docs-only as staged.** The skill's executable core — `scripts/run.py`,
  `src/` — is MISSING from this repo. It is also absent from the live
  `~/workspace/custom-skills/beyond-seo/` (checked 2026-11-14: 135 files, same
  docs, no `scripts/` or `src/`). So this merged skill is **docs-only**: do NOT
  present `run.py doctor` (or any `run.py` command) as step one, and do not
  claim a crawler check ran when only docs were read. Follow the playbooks as
  guidance; run checks with whatever tool is actually available and say which.
- **Dangling upstream links.** beyond-seo docs link to upstream files
  (`../LICENSE`, `../CHANGELOG.md`, `../CONTRIBUTING.md`, etc.) that are NOT in
  this repo. They are noted here as dangling upstream links — the files were not
  invented to fill them. If a link 404s, say so and work from the docs present.
- **Playbook map:** `playbooks/` holds the working depth — `aeo-geo/` (answer
  engine + generative engine optimisation, entity SEO, citations, topical
  authority), `audit/` (content, conversion, crawlability, E-E-A-T/YMYL, full-site,
  internal linking, page speed / Core Web Vitals, schema), `backlink-system/`
  (audit, outreach, quality scoring, toxic-link risk), `competitor-research/`
  and `core/` (data-quality rules, decision tree). Read only the playbook the task
  needs; `PLAYBOOK_DEPTH.md` explains how deep each one goes.
- **No ranking guarantee.** Beyond SEO is website SEO with video-metadata
  playbooks only. It does not replace the ten-agent + jury gate, and it never
  promises a ranking, a view count or virality.

## Track 2 — Get clicked (beyond-artist)

Source: `beyond-artist/` (44 files), author Beyond Tahir.

- **Thumbnails, carousels, posters, social posts.** Design that earns the click
  without lying about the content. Thumbnail text stays short — max 5 words for
  Anime Valley brand work (standing user rule); the generic default is 3 words
  (see `youtube-agent/SKILL.md`). Clickbait thumbnails are a must for reach, but
  the thumbnail must not repeat the title — different words, same promise.
- **Instagram-only thumbnail changes.** Thumbnail work is agent-checked and
  Instagram-only: do not show thumbnails to the user first, and change them only
  on Instagram.
- **Version conflict (recorded, not resolved):** `SKILL.md` says 1.1.0; its own
  test reports say 1.8.0. That is why no version is stamped on this merged skill
  (see the note at the top). Do not quote either number as settled.

## What came from where

| Original skill | Files | Lives at | Role in this merged skill |
| --- | --- | --- | --- |
| beyond-seo | 135 | `beyond-seo/` | Track 1 — SEO / AEO / GEO (docs-only as staged) |
| beyond-artist | 44 | `beyond-artist/` | Track 2 — thumbnails, posters, social design |
| **Total** | **179** | | |
