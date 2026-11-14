---
name: viral-daily
description: Viral Daily — the playbook for the user's second Instagram account @usamabkr85 (display name "Viral Daily"). Post ONLY viral content from all over the world as original reels, checked every 5 hours: find what's spiking, break down the top competitor reel with rea-video first, then build our own reel in the same format with real footage first, fast cuts, word-by-word captions, AEO/SEO/GEO + hashtags, and post straight away via the browser. Never brand content, never a repost.
---

# Viral Daily — @usamabkr85

Second Instagram account, SEPARATE from Anime Valley Stories. Never post brand content or brand-schedule videos here. Display name "Viral Daily", bio "Viral videos from all over the world 🌍 New trending reels every day 🔥". Username stays usamabkr85.

## The job

Runs EVERY 5 HOURS, around the clock (changed 2026-11-14 — was every 2 hours). Each run is a CHECK first — post only when there is something new to post.

## FilmCraft build process (the user, 2026-11-14 — the Part 7 process, adapted for reels)

Every reel is built through the FilmCraft-from-scratch process, adapted for this account's speed: divide the reel's pieces among parallel agents where the work splits (trend research, script/captions, visuals, voice/music, metadata), build from scratch for this trend (no reused reel, no repost), assemble the timeline in FilmCraft (`~/workspace/filmcraft/`, `filmcraft-cli`) when the reel needs timeline work — transitions, styled word-by-word captions, voice/music mix, loudness to −14 LUFS — with bitrateMode "crf" + crf 23 (crf alone is ignored) and burnCaptions: true. For a plain join with no timeline work, ffmpeg is faster (~50x on this VM) and is allowed. Self-check the finished reel before posting (plays cleanly, captions correct, facts accurate, first 2 seconds hook, never a slideshow). This account does NOT use the brand's ten-agent + jury gate — the light check above is its gate. Kaggle is NOT used (left by the user 2026-11-14); do not retry the blocked built-in video generator.

1. Read the posted log at `~/workspace/second-instagram/POSTED.md`. Never repeat a topic already posted.
2. Check what is going VIRAL right now, worldwide: X/Twitter, TikTok, Instagram, YouTube, Google Trends / news. Pick the strongest — spiking fast, lots of engagement, worldwide appeal, still fresh. Verify it is real and current before making anything.
3. **REA-FIRST RULE:** before making any reel, find the TOP VIRAL REEL on that same trend, get its video file, and break it down with rea-video (`~/.local/bin/rea-video decompose <file> -o ~/workspace/second-instagram/rea-video-out/<topic> --lang en`, after reading `~/workspace/custom-skills/rea-video/SKILL.md`). Learn its format: shot count, shot lengths, caption style, music and SFX, pacing, how the hook works. Then build OUR reel in that SAME format with our own images, words and edit — same style and structure, never their footage or audio as-is. If no competitor reel can be fetched, build in the quality-bar format below and note that no rea breakdown was available.
4. If a NEW strong viral topic appeared since the last check, make an original vertical reel (9:16, max ~30 s) and post it straight away. Several new strong trends → a reel for each. No daily maximum.
5. Nothing new → post NOTHING. Do not re-cover an old topic, do not force a reel.
6. **DAILY MINIMUM:** at least ONE reel per day. If the log shows zero posted today, this run MUST post one — the strongest topic of the day, even if not brand-new.

## Top channels check (the user, 2026-11-13)

Every run, inspect at least 4–5 top viral niche channels/accounts where the trends come from — including @pubity and @goodnews_movement and the other biggest viral accounts. Look at what they posted in the last few hours and which topics and formats are getting the most engagement. Analyze all 5 together first, then choose the trend and build the post from what is working across them.

## Geolyth (@geolyth__) — "Last 24 Hours" news-roundup pattern (the user, 2026-11-14)

Channel the user sent to study deeply: TikTok @geolyth__, bio "From every corner of the planet 🌎 — Sports | Politics | Finance. Real World. Real Time." Example video the user sent: https://vt.tiktok.com/ZSpXQ8NoX/ — "Last 24 Hours In U.S. & Geopolitics: Russia and Ukraine held talks in Abu Dhabi", 91 s, 79,500 plays, 3,654 likes, 29 comments, 141 shares, 295 saves, original sound, hashtags #usnews #newsupdate #unitedstates #geopolitics #geopolitica.

Pattern (verified from the example; full deep study in progress — see the recipe file below):
- **Format:** a daily "Last 24 Hours" roundup, not a single story — several fresh news items in one video, US news + geopolitics first, sports/finance in the mix.
- **Length:** ~90 s (longer than our usual ~30 s cap — the roundup format earns the extra time with one new item every few seconds).
- **Voice:** original sound / voiceover narration carrying the whole video; visuals illustrate the voice, they do not carry it alone.
- **Visuals:** real footage and real images of the actual events (maps, flags, meeting photos) — the news itself is the visual.
- **Hashtags:** small, on-topic news tags (#usnews #newsupdate #geopolitics), not generic filler.
- **Deadline (the user, 2026-11-14): one Geolyth-style video on Viral Daily within 24 hours, by Sun 2026-11-15 ~07:00 AST — and then EVERY 24 HOURS, one video, same news type: "what's going on in the world".** It must be a fresh, verifiable "last 24 hours" roundup, built in this pattern with our own voice, captions and edit — never a repost of a Geolyth video, never clips longer than 5 s from any one source, speed-changed between segments.
- **FACT-CHECK RULE (the user, 2026-11-14, COMPULSORY for the daily news roundup): facts and figures CHECKED — no false news.** Every item in the roundup must be verified against at least two reputable sources (major news outlets / official statements) before it goes in: dates, places, names, numbers and quotes all checked. If an item cannot be verified, leave it OUT — never guess, never use an unconfirmed claim, never inflate a number. A roundup with one unverified item does NOT post.
- **Full recipe:** the deep-study report lives at `~/workspace/second-instagram/geolyth-pattern/GEOLYTH-PATTERN.md` (channel stats, cadence, rea-video breakdowns of 2–3 of its videos, exact structure/timing/caption rules, and fresh topic options). Read it before building a Geolyth-style reel, and fold its final numbers into this section when the study lands.

## Quality bar

Competitors @pubity (42M) and @goodnews_movement (5.5M) win with REAL moments, fast cuts and emotion. Every reel:

- 8–10 different visuals, a NEW visual every 3–4 s
- VARIED motion (zoom in, zoom out, pan left, pan right — never the same slow zoom twice in a row)
- Word-by-word captions with the key word highlighted
- Sound effects on cuts + music
- Max ~30 s, HOOK FIRST — open on the most emotional or surprising image and line, never the setup
- Voice only if it fits; the cloned voice is available, otherwise music
- On-screen text short. Format that works: payoff/proof in frame one, one fact per shot, zoom-in title, big bold captions, end on an open question so people comment
- If it feels like a slideshow with a voiceover, remake it

## Real footage rule (the user, 2026-11-13)

Real footage first — not just pictures. People engage more with real moments.

- The viral videos found on X/TikTok/Instagram/YouTube already carry real footage of the moment — use short clips of that real moment too, re-cut into OUR OWN reel with our own captions, voice, cuts and structure.
- **Clips of someone else's video: MAX 5 seconds each, and change the speed in between (speed segments up/down) to avoid detection.**
- Free-license stock video (Pexels, Pixabay, Mixkit, Coverr) is also fine.
- Generated images only for shots where no real footage exists.
- NEVER post someone else's whole video or reel as-is — always re-edit short clips into our own reel, never a full repost.

## Checks before posting

Light quality check (this account does NOT use the brand's ten-agent + jury gate): video plays cleanly, captions/text correct with no garbled words, facts accurate, nothing misleading. Fix or remake a flawed reel; never post a broken one. INTEREST CHECK: new visual every 3–4 s, motion varies, word-by-word captions, first 2 seconds must hook.

**COMPULSORY (the user, 2026-11-13): NEVER say anything bad or negative about Saudi Arabia in any reel, caption, or comment — on any account.** A reel or caption that does NOT post — fix it first.

## Captions — AEO / SEO / GEO + hashtags, MANDATORY

Every caption must: (a) open with 1–2 lines directly answering what the video shows and what the trend is (AEO); (b) carry the trend's key words in plain language (SEO); (c) keep the Viral Daily identity — viral videos from all over the world (GEO); (d) end with relevant hashtags — the trend's hashtag + #viral #trending #reels + 2–3 topic tags, max ~8 total. The Anime Valley brand answers do NOT apply here. No answer-first lines or no hashtags = does NOT post.

## Posting

- Post STRAIGHT AWAY — do not show the user first, do not wait for approval.
- Route: BROWSER only (the Instagram connector does NOT list this account). Switch to @usamabkr85 in the account switcher and VERIFY the username shown is usamabkr85 BEFORE posting — display name may read "Viral Daily"; the username is what must match. Any other account → STOP, post nothing, report it.
- If the browser cannot sign in to @usamabkr85, do NOT post to any other account — report the blocker briefly and leave the reel ready for the next run.
- After every post, append topic + live Reel link + date/time to `~/workspace/second-instagram/POSTED.md`, and report the live link(s) in chat. Nothing posted → say nothing.

## What the winners taught us (from the channels studied)

- **@pubity / @goodnews_movement:** real moments beat stills; payoff first, fast beats, open question at the end.
- **Nate Herk:** shots 1.1–1.4 s, first cut 0.6–1.0 s, speech within 0.1 s, every shot must move; captions 1–3 words per chunk; music ~11 dB under voice; every correction becomes a permanent skill rule.
- **Sirio Berati:** 5-image character sheet as the image reference for every clip.
- **Jeff Su:** prompt formula Task / Context / Exemplars / Persona / Format / Tone; Markdown over PDF; Intent Check before big jobs.
- **"Zoom In" format** trending Nov 2026; new beat every 2–3 s in top faceless formats; own voiceover safer than trending audio for business accounts.

## Ayushi Gupta (@shopwithayushi_) — comment-bait + proof tricks (the user, 2026-11-14)

Source: her reel https://www.instagram.com/reel/Ddo96lHSoOk/ (downloaded and frame-checked 2026-11-14; 9.7 s, music-only, no speech — every trick below is on-screen text or caption) + her profile via the connector (111 posts, 117,713 followers, verified). She is a beauty/fashion/lifestyle creator from Uttarakhand, India; her growth-tip reels are her best performers by far.

**What her best reels actually do (verified numbers):** the target reel got 7,135 likes / 16,861 comments (comments 2.4× likes). Her other one-word-CTA reels: "Viral" 7,026 likes / 1,388 comments (Oct 27), "Key" 1,477 / 885 (Oct 31), "words" 1,120 / 688 (Oct 26), "Hashtags" 711 / 191 (Nov 1). Her non-CTA reels get 0–30 likes and 0–5 comments. The mechanic, not the topic alone, is doing the work.

**Tricks — use ALL of them on Viral Daily:**

1. **One-word comment-bait CTA, every reel.** End every reel and caption with a single-word prompt tied to the topic: "Comment '[ONE WORD]'". The word must be meaningful for the topic (not random). This is the single highest-leverage trick she shows: it turns viewers into commenters, and comments are the strongest engagement signal. Our existing open question at the end stays, but ADD the one-word prompt as well — e.g. "Comment 'SCAM' if you knew this already" for a debunk reel.
2. **"Follow and comment" double CTA.** Her caption formula is "Follow and comment '[WORD]'". One line asks for the follow AND the comment together. Use it: "Follow Viral Daily and comment '[WORD]'".
3. **Real reward behind the word.** Her CTA is not empty: the promised list lives as a Google Doc linked in her bio ("Keywords🚀"), and she replies "check DMs" to commenters. Our word-CTA must also deliver something real: the answer/detail goes in a reply to the comment, or a link in bio, or the next reel. Never ask for a comment and deliver nothing — empty bait trains the audience to ignore the next CTA.
4. **Proof chips in frame 1.** Her hook is a big yellow-on-black title ("How to make Viral reel?") plus view-count chips (2.6M, 1M, 2.9M) beside her face. For our reels, frame 1 already leads with the payoff — ADD a numeric proof chip when the numbers are real and checkable (e.g. "5.2M views", "93% non-followers"). Never invent a number.
5. **Analytics screenshot as proof inside the reel.** She ends with her real Insights screenshot (5,196,039 views, 93.7% non-followers, 2,607,457 accounts reached, +47.2%). When we have a real result to show (a reel's views, a trend's numbers), show the actual screenshot in the reel, not a retyped claim.
6. **Screen-recorded tutorial format for how-to topics.** When the topic is a how-to or a setting, show the REAL screen, step by step, with a drawn arrow/circle guiding the eye to each tap (Settings → Content preferences → Specific words and phrases). Real UI beats a drawn diagram.
7. **Keyword lesson — HONEST version.** Her reel claims adding niche keywords in Settings → Content preferences → "Specific words and phrases" trains the algorithm to show your content. That is NOT what the setting does: it HIDES posts containing those words from YOUR OWN feed (her own commenters say so). The real, usable lesson is her on-screen line: "Use Relevant Keywords For Your Content" — put the niche's exact keywords in the caption and hashtags so Instagram can categorise the reel (our AEO/SEO already does this; keep doing it with the trend's real words). ALSO use the setting for its real purpose on our own account: it HIDES posts containing the listed words from OUR OWN feed — so NEVER add our niche's keywords there (that would hide our niche from us and hurt trend-spotting). Use it only to hide words we do not want to see (spam, scam, off-topic words), keeping the feed clean.
8. **Handle watermark on every frame.** Her @shopwithayushi_ watermark sits on every frame, so re-shares still credit her. Put a small "@usamabkr85 / Viral Daily" mark on our reels (corner, low opacity, never over the action).
9. **Ultra-short tip reels (~10 s).** Her growth reels are ~10 s: one tip, loopable, high completion. When a topic is a single fact or tip, a ~10 s reel is allowed (the ~30 s cap is a maximum, not a target).
10. **Near-daily cadence, same template.** She posts almost every day, often the same "Follow and comment '[WORD]'" template with a new word. A repeatable daily template beats reinventing the format each run.
11. **Crosspost to Facebook.** Her Insights note says Facebook views count in the total because the content was crossposted there. Viral Daily reels are Instagram-only today — crossposting a reel to Facebook (same account's linked Page, when available) is a free extra audience; try it on the strongest reel of the day and watch whether it adds views.
12. **Niche hashtags, not broad ones.** She uses #reelsgrowth #instagramgrowthtips #creatorstrategy #contentcreatorlife #instagramalgorithm — small, on-topic tags. Our max-8 rule stands; prefer the trend's own niche tags over generic #viral filler (keep #viral #trending #reels as the base three).

**Guardrails:** the one-word prompt must be a real answer to a real question in the reel (never "comment X for no reason"); never promise a list, link or reply we do not deliver; never ask for the same word twice in a row across reels; if comment volume ever looks like spam to Instagram (dozens of identical one-word comments in minutes), vary the prompt and slow the cadence — a shadowban costs more than the comments gain.
