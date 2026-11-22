---
name: viral-daily
description: Viral Daily — the playbook for the user's second Instagram account @viraldaily.official (display name "Viral Daily"). Post ONLY viral content from all over the world as original reels, checked every 5 hours: find what's spiking, break down the top competitor reel with rea-video first, then build our own reel in the same format with real footage first, fast cuts, word-by-word captions, AEO/SEO/GEO + hashtags, and post straight away via the browser. Never brand content, never a repost.
---

# Viral Daily — @viraldaily.official

Second Instagram account, SEPARATE from Anime Valley Stories. Never post brand content or brand-schedule videos here. Display name "Viral Daily", bio "Viral videos from all over the world 🌍 New trending reels every day 🔥". Username is viraldaily.official — renamed by the user Sun 2026-11-15 ~19:32 (was @usamabkr85; old name no longer exists).

## The job

Runs EVERY 5 HOURS, around the clock (changed 2026-11-14 — was every 2 hours). Each run is a CHECK first — post only when there is something new to post.

## FilmCraft build process (the user, 2026-11-14 — the Part 7 process, adapted for reels)

Every reel is built through the FilmCraft-from-scratch Part 7 process — see the
full process in [video-craft](../../video-craft/SKILL.md) ("Track 1: story films —
FilmCraft-from-scratch (Part 7, current default)"). Do not re-derive it here.

Viral Daily-specific adaptations (these stay here — they are the only part of the
process that is account-specific):

- Divide the reel's pieces among parallel agents where the work splits (trend
  research, script/captions, visuals, voice/music, metadata); build from scratch
  for this trend (no reused reel, no repost).
- Assemble the timeline in FilmCraft (`~/workspace/filmcraft/`, `filmcraft-cli`)
  when the reel needs timeline work — transitions, styled word-by-word captions,
  voice/music mix, loudness to −14 LUFS — with bitrateMode "crf" + crf 23
  (crf alone is ignored) and burnCaptions: true. For a plain join with no
  timeline work, ffmpeg is faster (~50x on this VM) and is allowed.
- Self-check the finished reel before posting (plays cleanly, captions correct,
  facts accurate, first 2 seconds hook, never a slideshow). This account does NOT
  use the brand's ten-agent + jury gate — the light check above is its gate.
- Kaggle is NOT used (left by the user 2026-11-14); do not retry the blocked
  built-in video generator.

The run steps (account-specific — kept here in full):

1. Read the posted log at `~/workspace/second-instagram/POSTED.md`. Never repeat a topic already posted.
2. Check what is going VIRAL right now, worldwide: X/Twitter, TikTok, Instagram, YouTube, Google Trends / news. Pick the strongest — spiking fast, lots of engagement, worldwide appeal, still fresh. Verify it is real and current before making anything.
3. **ASSEMBLY RULE (the user, 2026-11-18, from the GTA 6 contract reel): NEVER mix video filters and audio loudnorm in one filter_complex** — the first assembly silently dropped ~3 s of audio packets (voice lines missing) and it reproduced on re-runs. Always encode video-only first, then loudnorm the audio separately and mux with `-c copy`. Always run the **audio packet-gap check** on the final file — volumedetect means alone do not catch a dropped-packet hole.
4. **REA-FIRST RULE:** before making any reel, find the TOP VIRAL REEL on that same trend, get its video file, and break it down with rea-video (`~/.local/bin/rea-video decompose <file> -o ~/workspace/second-instagram/rea-video-out/<topic> --lang en`, after reading `../../video-craft/rea-video/SKILL.md` in this repo). Learn its format: shot count, shot lengths, caption style, music and SFX, pacing, how the hook works. Then build OUR reel in that SAME format with our own images, words and edit — same style and structure, never their footage or audio as-is. If no competitor reel can be fetched, build in the quality-bar format below and note that no rea breakdown was available.
5. If a NEW strong viral topic appeared since the last check, make an original vertical reel (9:16, max ~30 s) and post it straight away. Several new strong trends → a reel for each. No daily maximum.
6. Nothing new → post NOTHING. Do not re-cover an old topic, do not force a reel.
7. **DAILY MINIMUM:** at least ONE reel per day. If the log shows zero posted today, this run MUST post one — the strongest topic of the day, even if not brand-new.

## GTA focus — TWO NEWS IN ONE VIDEO (the user, 2026-11-18 evening, voice notes ~19:24 + ~19:35, Whisper-verified — CORRECTS both the 07:59 "GTA 6 in every video" rule and the alternation reading of it)

Focus on whichever GTA is the newest version — right now that is GTA 6 (GTA VI, launching 2026-11-19). If a newer GTA version comes out later, switch to that one.

**TWO-IN-ONE-VIDEO RULE (the user, 2026-11-18 ~19:35):** GTA will be in ALL reels — along with the other viral videos, in that same video. Every regular reel gathers TWO viral news in the same video: one is GTA 6 news, the other is another viral news fetched from social media. Not GTA-only reels, not alternating reels — both items in one reel, every time. The caption covers both stories; the one-word comment prompt ties to the reel (either story). The daily 24-hour roundup keeps one GTA 6 story among its 5–8 stories — it is already a mix, so that rule stands.

## More original content (the user, 2026-11-18 evening — after the "Unoriginal content — In review" flag on the profile)

Instagram flagged the account for unoriginal content (Nov 16–17 reels). Every reel must be clearly transformed original content: our own edit, our own voiceover, our own captions, our own structure — never a lightly re-cut repost. Prefer free stock footage and AI visuals where they fit; when using clips of a real moment, keep them short (max 5 s), speed-change them, and surround them with our own material. If a reel looks like someone else's video with a voiceover on top, remake it more original before posting.

## Top channels check (the user, 2026-11-13)

Every run, inspect at least 4–5 top viral niche channels/accounts where the trends come from — including @pubity and @goodnews_movement and the other biggest viral accounts. Look at what they posted in the last few hours and which topics and formats are getting the most engagement. Analyze all 5 together first, then choose the trend and build the post from what is working across them.

## Geolyth (@geolyth__) — "Last 24 Hours" news-roundup pattern (the user, 2026-11-14)

Channel the user sent to study deeply: TikTok @geolyth__, bio "From every corner of the planet 🌎 — Sports | Politics | Finance. Real World. Real Time." Example video the user sent: https://vt.tiktok.com/ZSpXQ8NoX/ — "Last 24 Hours In U.S. & Geopolitics: Russia and Ukraine held talks in Abu Dhabi", 91 s, 79,500 plays, 3,654 likes, 29 comments, 141 shares, 295 saves, original sound, hashtags #usnews #newsupdate #unitedstates #geopolitics #geopolitica.

Pattern (verified from the example AND the full-channel watch of all 14 videos, done Sat 2026-11-14 evening — see the recipe file below):
- **Format:** a daily "Last 24 Hours" roundup, not a single story — several fresh news items in one video, US news + geopolitics first, sports/finance in the mix.
- **Length:** ~90 s (longer than our usual ~30 s cap — the roundup format earns the extra time with one new item every few seconds).
- **Voice:** original sound / voiceover narration carrying the whole video; visuals illustrate the voice, they do not carry it alone.
- **Visuals:** real footage and real images of the actual events (maps, flags, meeting photos) — the news itself is the visual.
- **Hashtags:** small, on-topic news tags (#usnews #newsupdate #geopolitics), not generic filler.
- **Status (updated 2026-11-14): COMPLETED as a launch — Roundup #1 went live Sat 2026-11-14 ~08:19 AST, and the full-channel watch of all 14 Geolyth videos is done. The daily job continues: EVERY 24 HOURS, one video ~07:00 AST, same news type: "what's going on in the world".** It must be a fresh, verifiable "last 24 hours" roundup, built in this pattern with our own voice, captions and edit — never a repost of a Geolyth video, never clips longer than 5 s from any one source, speed-changed between segments.
- **FACT-CHECK RULE (the user, 2026-11-14, COMPULSORY for the daily news roundup): facts and figures CHECKED — no false news.** Every item in the roundup must be verified against at least two reputable sources (major news outlets / official statements) before it goes in: dates, places, names, numbers and quotes all checked. If an item cannot be verified, leave it OUT — never guess, never use an unconfirmed claim, never inflate a number. A roundup with one unverified item does NOT post.
- **Full recipe:** the deep-study report lives at `~/workspace/second-instagram/geolyth-pattern/GEOLYTH-PATTERN.md` (outside this repo — read it before building a Geolyth-style reel). Its §9 full-channel watch: longest/densest videos win (Hormuz 3:21, 8 stories, 1.3M; Seven States 3:05, 391.9K); on a big news day go longer and denser (6–8 stories), thin days stay short. **Their weak points — NOT copied:** dates disagree (chip vs audio vs post date — viewers complain); numbers drift with no correction (House Democrats 254/253/258; casualty tolls retold differently); segments reposted verbatim as new videos. **Our edge: subtitles + date/number discipline** — one locked date format stated in audio, on screen and in caption, matching the day covered; a fact-check pass + one source of truth for running figures; never repost a segment as a new video. Intro is NOT identical every time in their videos (spoken variants exist) — ours keeps the locked intro. No music bed, no burned-in subtitles, no outro in theirs; we add subtitles as our improvement.

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
- **VOICE RULE (the user, 2026-11-15, STANDING, Daily Viral ONLY): same voice in ALL videos** — every reel, short or long, any kind, gets a voiceover in the SAME voice as the 24-hour roundup: `/opt/hatch/bin/tts speak --language en` (voice Helio, avocado_v2:MAI_03), calm male newsreader ~150 words/min. No music-only reels, no cloned voice on this account — the roundup voice is the account's voice. (Brand films keep the Chatterbox cloned voice; this rule is Daily Viral only.) Supersedes the 2026-11-14 voice rule.
- **NARRATION DIRECTION (the user, 2026-11-15, from Mino Lee + AniThing): one real listener, FaceTime energy.** Write every voiceover for ONE real person (name them in the brief), calm, like telling a friend the story — never loud or performative. Script word-for-word with pauses marked before generating the voice.
- **HOOK ARCHETYPES — ROTATE (the user, 2026-11-15, from Kallaway):** pick the hook archetype from the key visual and rotate it across reels — Fortune Teller, Experimenter, Teacher, Magician (a layer only, never standalone), Investigator, Contrarian. Never the same archetype two reels in a row. Audit every hook with the 6 slots [Subject] [Action] [Objective] [Contrast] (+[Proof]) (+[Time]) and the 4-mistake check (Delay, Confusion, Irrelevance, Disinterest) before posting; any reel missing Contrast or Objective gets rewritten, not posted.

## Real footage rule (the user, 2026-11-13)

Real footage first — not just pictures. People engage more with real moments.

- The viral videos found on X/TikTok/Instagram/YouTube already carry real footage of the moment — use short clips of that real moment too, re-cut into OUR OWN reel with our own captions, voice, cuts and structure.
- **Clips of someone else's video: MAX 5 seconds each, and change the speed in between (speed segments up/down) to avoid detection.**
- Free-license stock video (Pexels, Pixabay, Mixkit, Coverr) is also fine.
- Generated images only for shots where no real footage exists.
- NEVER post someone else's whole video or reel as-is — always re-edit short clips into our own reel, never a full repost.

## Reel structure — real video first, AI pictures in between, end CTA (the user, 2026-11-17, CORRECTED — open on real video)

Every regular Viral Daily reel follows this order:
- **OPEN ON REAL FOOTAGE (the user, 2026-11-17, STANDING — asked before and it was missed): the first visual of the reel is a REAL video clip of the moment — never the banner, never an AI image.** Start the video with a real video.
- **AI pictures go only IN BETWEEN real clips** — alternate real video, AI picture, real video, AI picture; never two of the same kind in a row.
- The banner (topic/title + Viral Daily identity) is the COVER/thumbnail frame only — it does not open the video.
- **End card last: "Please follow, like, share and comment"** — the final frame of every reel.
- The Geolyth daily news roundup keeps its own pattern (ends mid-roundup, no outro card) — this rule does not change it unless the user says so.

## Checks before posting

Light quality check (this account does NOT use the brand's ten-agent + jury gate): video plays cleanly, captions/text correct with no garbled words, facts accurate, nothing misleading. Fix or remake a flawed reel; never post a broken one. INTEREST CHECK: new visual every 3–4 s, motion varies, word-by-word captions, first 2 seconds must hook.

**COMPULSORY (the user, 2026-11-13): NEVER say anything bad or negative about Saudi Arabia in any reel, caption, or comment — on any account.** A reel or caption that does NOT post — fix it first.

## Captions — AEO / SEO / GEO + hashtags, MANDATORY

Every caption must: (a) open with 1–2 lines directly answering what the video shows and what the trend is (AEO); (b) carry the trend's key words in plain language (SEO); (c) keep the Viral Daily identity — viral videos from all over the world (GEO); (d) end with relevant hashtags — the trend's hashtag + #viral #trending #reels + 2–3 topic tags, max ~8 total. The Anime Valley brand answers do NOT apply here. No answer-first lines or no hashtags = does NOT post.

## AI content label (the user, 2026-11-15)

Instagram auto-applies an "AI content" label to this account's reels — confirmed live on the U19 reel (instagram.com/reel/DfxSp42iZdw) and the Scarf Man reel (instagram.com/p/Dfwjml7CNsO), 2026-11-15. The label dialog says "This content was likely created or modified with AI" and "based on Meta's automated detection signals" — Meta's detection puts it there; nobody switches it on at upload. The trigger is the realistic AI voiceover (Helio TTS) and the AI-generated images. NEVER turn on the "Add AI label" switch manually at upload — leave it OFF. Do NOT strip metadata or hide the AI origin to dodge the label. Per Meta, the label itself does not limit reach or monetization eligibility. The real monetization blockers are (1) followers — 1 follower now; Gifts need 500 (US) / 1,000 (outside US), Subscriptions 10,000, Bonuses invite-only; and (2) format — Meta's Content Monetization Policies do NOT pay for slideshows of still images, static videos or looping videos, so every reel must keep real footage first, a new visual every 3–4 s, varied motion, and never feel like a slideshow. After posting, check the live reel and note in POSTED.md whether the "AI content" label shows.

## Posting

- Post STRAIGHT AWAY — do not show the user first, do not wait for approval.
- Route: BROWSER only (the Instagram connector does NOT list this account). Switch to @viraldaily.official in the account switcher and VERIFY the username shown is viraldaily.official BEFORE posting — display name may read "Baker" or "Viral Daily"; the username is what must match. Any other account → STOP, post nothing, report it.
- If the browser cannot sign in to @viraldaily.official, do NOT post to any other account — report the blocker briefly and leave the reel ready for the next run.
- FINAL EDITS IN EDITS APP (the user, 2026-11-16, STANDING): final edits for Instagram must be made with Instagram's Edits app. Edits is phone-only — Muse cannot run it here, so the final pass is a phone step. Workflow (auto-post vs hold for the Edits pass) to be confirmed by the user; until then, keep the browser posting route above.
- After every post, append topic + live Reel link + date/time to `~/workspace/second-instagram/POSTED.md`, and report the live link(s) in chat. Nothing posted → say nothing.

## Replying to comments (the user, 2026-11-18, STANDING)

Reply to EVERY new comment on this account, whether the commenter is the user's own account or someone else's. FULL browser permission — never ask for permission to reply; just do it in the browser (the connector does not list this account). Verify username viraldaily.official before replying; any other account → stop. Style: short and friendly; for one-word CTA comments deliver the promised answer/detail; for GTA 6 comments keep GTA 6 in the reply. Never reply to spam/scams/hate — hide those instead. Never reply twice to the same comment — the recurring check keeps a replied log at `~/workspace/instagram-comments/replied-comments.md`.

**CROSS-REPLIES (the user, 2026-11-18, STANDING):** also comment from this account on new @animevalleystories reels (browser) — one genuine short comment per new brand post, in Viral Daily's friendly voice, never the same text twice in a row. And reply to comments the brand or personal accounts leave here.

## What the winners taught us

Condensed from the creator-lessons track — see the full lessons in
[video-craft](../../video-craft/SKILL.md) ("Track 4: creator lessons"). In short:
real moments beat stills; payoff first, fast beats, open question at the end;
Nate Herk's reel numbers (1.1–1.4 s shots, speech within 0.1 s); Sirio's 5-image
character sheet; Jeff Su's Task/Context/Exemplars/Persona/Format/Tone prompt
formula. The full detail lives there — this section used to duplicate it.

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
8. **Handle watermark on every frame.** Her @shopwithayushi_ watermark sits on every frame, so re-shares still credit her. Put a small "@viraldaily.official / Viral Daily" mark on our reels (corner, low opacity, never over the action).
9. **Ultra-short tip reels (~10 s).** Her growth reels are ~10 s: one tip, loopable, high completion. When a topic is a single fact or tip, a ~10 s reel is allowed (the ~30 s cap is a maximum, not a target).
10. **Near-daily cadence, same template.** She posts almost every day, often the same "Follow and comment '[WORD]'" template with a new word. A repeatable daily template beats reinventing the format each run.
11. **Crosspost to Facebook.** Her Insights note says Facebook views count in the total because the content was crossposted there. Viral Daily reels are Instagram-only today — crossposting a reel to Facebook (same account's linked Page, when available) is a free extra audience; try it on the strongest reel of the day and watch whether it adds views.
12. **Niche hashtags, not broad ones.** She uses #reelsgrowth #instagramgrowthtips #creatorstrategy #contentcreatorlife #instagramalgorithm — small, on-topic tags. Our max-8 rule stands; prefer the trend's own niche tags over generic #viral filler (keep #viral #trending #reels as the base three).

**Guardrails:** the one-word prompt must be a real answer to a real question in the reel (never "comment X for no reason"); never promise a list, link or reply we do not deliver; never ask for the same word twice in a row across reels; if comment volume ever looks like spam to Instagram (dozens of identical one-word comments in minutes), vary the prompt and slow the cadence — a shadowban costs more than the comments gain.
