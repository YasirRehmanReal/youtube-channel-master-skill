# YouTube Studio Schedule Check

## Confirm the channel before you touch anything

- Check the channel switcher in the signed-in browser session and confirm the selected channel is the intended one before you open an upload. An account that holds more than one channel can open on the wrong one.

- Use a browser session that is already signed in to that account and can reach Studio. If no session can reach Studio, stop and report the missing sign-in instead of asking the user to perform steps a signed-in session could do.

- Carry the exact approved title, description, tags, chapters, thumbnail file and subtitle file into the task. Treat the approval as covering only that version.

## Set the schedule so it survives saving

- Set visibility to Scheduled and enter the date and time in the timezone Studio displays, converting from the user's timezone first. State both times when you report the schedule.

- Pick the time from Studio's suggestion list when a typed time does not stick. Use the standalone visibility editor when the upload wizard stores a different time than the one it showed.

- Keep the video a scheduled upload and not a Premiere unless the user asked for a Premiere.

- Upload subtitles from the video's Subtitles page in Studio when the API connector scope does not cover captions.

## Read the saved video back after a reload

- Reload the video's edit page after scheduling and read the saved values. The wizard confirmation can show values that Studio did not store.

- Confirm the scheduled date and time, visibility, title, description, tags, chapters, thumbnail and subtitle track on the reloaded page. Check whether processing has finished and name its state when it has not.

- Fix any field that reverted through its standalone editor, then reload and read it back again before you report.

- Report a draft, a scheduled video and a live video as different states, with the video link and the scheduled time in the user's timezone. Name any field you could not verify.

## Available connectors

- [Youtube](<connectors-dir>/custom.youtube/CONNECTOR.md) for API uploads and thumbnails within its upload scope, and for the caption limit that sends subtitles to Studio.

- Use `muse.connector_search` to find other connectors and `muse.skill_search` to find related skills.

- If nothing here fits, look on the web for a maintained API or MCP server and set it up with [Custom Connectors and MCPs](/opt/muse/skills/custom-connector-setup/SKILL.md), or build a custom connector.

## Websites

- [YouTube Studio](https://studio.youtube.com/) for uploading, scheduling and reading a video back. Carry the approved metadata and files into `browser.browse`, and verify the saved fields there after a reload.

## Alternatives for better results

- Schedule a follow-up check at the publish time with `cron.add` to confirm the video went public with its metadata intact, instead of trusting the schedule alone.

- When Studio blocks a feature with an eligibility dialog, record the block and use a description link or a manual swap as the workaround instead of retrying the blocked control.

- Keep the upload pack in one folder so every re-check compares Studio against one source for the title, description, tags, chapters, thumbnail and subtitles.
