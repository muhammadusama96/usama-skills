# Scope note — Anime Valley Stories (the user, 2026-11-08)

Skill installed from: shifabaloch13/working_hackthoon_zero_0 — `.qwen/skills/facebook-instagram-mcp/SKILL.md`
(also its FACEBOOK_GRAPH_API_SETUP.md and `facebook_poster.py`).
Local code: `~/workspace/facebook-instagram-skill/` — venv with facebook-sdk 3.1.0 + requests, verified importing.

## What it is
Official Meta Graph API posting for Facebook Pages + Instagram Business accounts (facebook-sdk, Graph API v18.0).
Post drafts → human approval → publish. No browser automation. Endpoints: Page feed posts,
Instagram media containers + media_publish, Page/IG insights.

## Our accounts
- Facebook Page: "Usama Stories", Page ID 00000000000000000, category Digital creator.
- Instagram: @animevalleystories, Creator account, 14 posts. NOT linked to Muse (instagram-cli accounts = [] as of 2026-11-08).
- Facebook connector here is also NOT linked (facebook-cli me = {}) since the 2026-11-07 password change; Page work currently goes via the browser.

## What is still missing (needs the user, in his browser)
No Meta developer app and no tokens exist yet, so the skill CANNOT post yet:
1. developers.facebook.com → create a Business app, add Facebook Login for Business.
2. Permissions: pages_manage_posts, pages_read_engagement, instagram_basic, instagram_content_publish.
3. Generate a long-lived Page access token (Page token never expires) and the Instagram Business Account ID
   (GET /{page-id}?fields=instagram_business_account).
4. Tokens go via the Secure Vault flow only — NEVER in chat, NEVER stored in a file or in memory.
5. Instagram must be a Business/Creator account linked to the Page (it is Creator; link to the Page needs checking).

## Rules for this skill here
- Approval workflow is mandatory: drafts first, the user approves, then publish. Never auto-post.
- Keep the standing rules: jury-PASS only for uploads, short on-screen text only, YouTube link in every Short's
  Instagram caption / Facebook Reel description, Shorts only on Facebook (no full films).
- Until tokens exist, keep using the browser route for Facebook/Instagram posting — do not claim the API route works.
- Instagram first: when tokens arrive, connect and test Instagram posting before Facebook.
