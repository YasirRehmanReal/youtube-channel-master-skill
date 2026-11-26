# Verdict Video Production

## Size the script from measured pace

- Target 34 to 40 minutes for each finished video, and treat longer as acceptable and shorter as a miss.

- Measure the voice pace from each finished video by dividing its narration words by its finished minutes, and use the newest measured rate for the next script.

- Never size a script from the old 150 words per minute assumption, since the first video measured about 193 words per minute and the second about 217.

- Compute the script length as target minutes multiplied by the newest measured pace, then check the finished runtime and re-measure the pace for the next video.

- Expand a short script with verified case material instead of padding it, and check every added fact before narration.

## Narrate inside the free tier quota

- Keep one voice across a whole video, and keep the voice the user already approved for the channel.

- Run the narration through your TTS helper (e.g. Kokoro via synth_kokoro.py in video-editing-skill, or any TTS you have set up). Keep one approved voice across the whole video.

- Batch the narration into as few large chunks as the helper supports, because the free tier limit counts requests per day per model and a 429 once stopped a video mid narration.

- Verify every narration part in full before you assemble it. Check its duration against its word count at the newest measured pace, and check its content across the whole part, not only its tail, since one part passed its duration and tail checks yet was missing 464 words in the middle.

- Discard a defective or half made part and remake it instead of using it. Split a long part into two smaller parts when it keeps coming back at about half the expected length, since two parts each came back half made twice before splitting fixed them.

- Keep each TTS request at or under about 2,000 words. The output ceiling sits near 655 seconds / about 2,240 spoken words, and a longer request can silently truncate in the middle or at the end while duration checks still pass — Video 5 chunk D (2,282 words) failed twice this way. Verify every part with a full Whisper transcription aligned against the expected words, not only duration and tail checks.

- Remember the free tier quota counts per project, not per key, so a new key from the same project does not restore quota. Use a key from a new project when you need fresh quota.

- Finish the narration for the earliest publish date first, so a quota stop delays the later video instead of the next one due.

- Stop when the quota is hit, record which parts are done and which are left, and resume only after the reset instead of retrying in a tight loop.

- Music bed: a REAL music track only — NCS or the YouTube Audio Library first (free for monetised use, credit in the description if the licence needs it). If no NCS/YTAL track fits on measurement, a CC-BY track from the composer's own library (e.g. Scott Buckley) is acceptable, but record the deviation honestly. Mix the bed ~12 dB under the narration, a touch louder in the hook, silent inside full-voice islands. Never use noise (brown/pink) as a bed — brown noise low-passed at 400 Hz sounds exactly like wind. A bad bed is worse than no bed — when in doubt, ship the narration dry.

## Build real looking moving scenes

- Use at least 10 to 12 real clips and as many scene-matched images as the narration needs in a 35 minute video, with a mind map linking each image to the narration at that second, so no image repeats and no stretch of narration runs on one picture. The count follows the story — never use 200 images just because 200 was said once; every image must earn its place by matching what is said at that second. Free stock first (Pexels / Pixabay / Wikimedia / LOC, CC0/CC-BY/public domain only); look at every image you choose, never trust a filename.

- Add a real looking cinematic clip with a slow push in, a handheld feel and film grain every 3 to 4 minutes, and put one in the opening hook.

- Use real footage and real images first. Download the real footage before you use it, and use AI stills only as a fallback, since a video built mostly from AI stills was judged fake.

- Match the visuals to the narration shot for shot as far as you can, since mood only pictures were the known weakness of the first video. Every image must illustrate the exact thing being said at that second, with no generic repeats and no 4 to 5 images looping through a 35 minute video.

- Keep the audio of every real reference clip in the finished file. Never strip audio from the build, since one build removed clip audio and shipped clips with no voices. Check the finished file that each clip island actually has sound.

- When a real reference clip plays (press conference, hearing, news report, bodycam, interview), the narrator goes COMPLETELY SILENT for the whole clip and the clip plays at full volume, like the competitors do. When the clip ends, the narrator resumes. Never talk over a reference clip, and never duck its audio under narration.
- Verify island sync against the AUDIO, never against a plan document: in Video 4 the scene-plan listed every island video_start 10s late, and the hook rebuild trusted it, so islands 2 and 3 played 10s early (clip video under narration, with narration subtitles over it). True island position = narr_time + 2s thumbnail hold + 10s per preceding island. Check each island with Whisper (clip voice audible, narrator silent) AND by looking at a frame inside it.
- Never use brown/pink noise as a music bed: brown noise low-passed at 400 Hz sounds exactly like wind. A bad bed is worse than no bed — when in doubt, ship the narration dry.

- The first 1–5 minutes are the trailer. Fast cuts every 2–4 seconds, trailer-style motion graphics with big text, zoom punch-ins. No slow Ken Burns stills in the hook. The hook must grab in the first 5 seconds.

- PACING (measured from a reference channel, 16 Nov 2026): cut every ~3 seconds, hook and body alike (~18 cuts/min, average shot 3.3 s). Never hold a still longer than 5 s; long holds (10 s+) only for real moving video. A 13-second still is a slideshow — that is what the channel owner rejected in Video 4 v2.

- TRANSITIONS AND SFX (measured from the reference — the old "whoosh on every cut" rule was wrong and is superseded): default to dry HARD CUTS, ~99% of all changes. NO whoosh anywhere — a whoosh riding under narration sounds odd and the channel owner rejected it twice. A very soft short click is allowed on at most ~15% of cuts (section changes, card entries), and only as a ≤0.05 s transient exactly at the cut instant — measure it: narration RMS 0.5 s after the cut must be unchanged. One low boom (≤0.3 s, ~10 dB over narration) at each chapter/section boundary. ONE red flash (~0.5 s) at the single biggest pivot in the video, used once only. Use royalty free sound effects only, and measure their level IN THE FINAL MIX — gain applied is not level in the mix.

- When the channel owner sends a reference video, deep-analyse it BEFORE rebuilding: download it, get the transcript, measure cut frequency, transition types, SFX duration/loudness vs narration, music style/level, motion graphics, and real-footage share — with timestamps — and write the findings down. Apply what the reference actually does, not what you assume it does.

- Show places, objects and documents only, with no face, no child and no blood in any clip.

- Check the first 2 minutes for pace and picture before handing the video over, and name the exact timestamps to check.

## Hand over an upload ready pack and verify the schedule

- Deliver the finished MP4, thumbnail, subtitles file and upload pack through a Google Drive folder, since chat file links repeatedly did not arrive. Name the folder for the video and keep the upload pack inside it.

- Upload and schedule the video yourself from the user's own logged in local browser, moving the files from Drive into Studio and setting the title, description, tags, chapters, playlist, audience and Scheduled visibility there. Never do Studio work in the cloud browser, since it opens signed out.

- Name the exact file for the user to pick when Studio asks for a file, and wait for his click, since you cannot drive the local browser file picker yourself.

- Verify the title, thumbnail, description, tags, chapters, playlist, visibility set to Scheduled, and the date and time before you call the video done.

- Warm the channel up between uploads by watching and liking one or two niche videos and subscribing to at most one channel per round, with no comments and no bulk actions.

## Available connectors

- Use `muse.connector_search` to find other connectors and `muse.skill_search` to find related skills.

- If nothing here fits, look on the web for a maintained API or MCP server and set it up with [Custom Connectors and MCPs](/opt/muse/skills/custom-connector-setup/SKILL.md), or build a custom connector.

## Websites

- [YouTube Studio](https://studio.youtube.com/) for checking an upload and setting its schedule. Carry the title, description, tags and chapters into the check, and verify each field is filled before confirming the schedule.

## Alternatives for better results

- Use the script, hook, thumbnail and metadata sub-skills in [Claude YouTube](<skills-dir>/claude-youtube/SKILL.md) when you start a new video, and keep this skill for the pacing, quota and handover rules those sub-skills do not cover.

- Wait for the quota reset instead of switching to a different voice mid video, since one voice keeps the video sounding professional.

- Ask the user to review the first 2 minutes for pace when you are unsure, and re-record the narration slower when he says the pace is fast instead of cutting visuals to fit.
