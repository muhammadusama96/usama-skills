# ZSky Motion Clips

## Make a motion clip from a still image

- Open ZSky in the browser and sign in with the user's Google account before you generate anything.

- Upload one finished still image for the shot and write a short prompt that describes the motion in that shot.

- Repeat the locked character description and the locked watercolour anime style in every prompt so the clip matches the rest of the film.

- Lock relative height in the prompt when two characters appear together so their sizes stay consistent with the other clips.

- Treat ZSky as the working free motion route for key shots where true motion matters.

- Do not retry the blocked built-in video generator for a motion shot and do not start Kaggle work for one.

- Allow time for the slow free queue and check My Creations for the finished clip instead of assuming it appears at once.

## Work around the people filter

- Do not name a girl or a young man or a young woman in a ZSky prompt because the safety filter refuses those prompts or renders a scene with no people.

- Describe two characters together as two friends when the shot needs both characters in frame.

- Check the finished clip frame by frame to confirm the people are present before you use it.

- Regenerate a scene-only clip with a reworded prompt instead of accepting a shot that lost its characters.

- Avoid the word kneel in a prompt because a two friends kneel prompt was refused in the tested batch.

- Try sit beside wording as the next untested retry for a kneeling shot and record whether it works before you rely on it.

## Trim, hide and download before assembly

- Hide every ZSky creation from Explore as soon as it appears because creations are visible on Explore by default.

- Download every finished clip promptly from the Download button on the My Creations plate because free clips are deleted after 7 days.

- Keep a local copy under the project folder so a deleted clip can still be used.

- Trim every clip to 5.0 seconds before assembly because each clip carries a black zsky.ai end card for about the last 1.75 seconds.

- Confirm the trimmed clip has no end card and no badge inside the picture before you pass it to assembly.

- Recheck the download after a failed followup run because a download or retry can still be open even when the generation itself worked.

## Check the clip before it joins a film

- Sample frames across the whole 5 second clip and confirm the motion is real movement and not only a camera pan over a still image.

- Compare the clip side by side with the other clips for the same rendering style and the same character design.

- Reject a clip whose characters change face or style or whose people are missing and regenerate it with a stronger style lock.

- Run the finished film through the normal Sumi gate after assembly and do not let a ZSky clip skip the character consistency and animation quality checks.

## Available connectors

- Use `muse.connector_search` to find other connectors and `muse.skill_search` to find related skills.

- If nothing here fits, look on the web for a maintained API or MCP server and set it up with [Custom Connectors and MCPs](/opt/muse/skills/custom-connector-setup/SKILL.md), or build a custom connector.

## Websites

- [ZSky](https://zsky.ai/) for image to video motion clips. Carry the still image and the motion prompt into `browser.browse` and verify the finished clip in My Creations, its hidden Explore state, and the downloaded file.

## Alternatives for better results

- Use Google Flow with Veo 3.1 for a small number of key shots when its setup is ready because it has no watermark and about five short clips a day.

- Use ZSky first when you need many short clips because it has no credits and no daily cap.

- Use still images with Ken Burns motion only when true motion is not needed for that shot and say plainly that the shot is stills with motion, not real motion.
