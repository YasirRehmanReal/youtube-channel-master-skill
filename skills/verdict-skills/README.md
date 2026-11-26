# Verdict Skills (private)

The production skill for a faceless long-form channel — a faceless, long-form
true-crime documentary channel (historical cold cases solved by DNA and
genetic genealogy). This repo is **private on purpose**: it holds the
channel's own production rules, learned the expensive way across real
videos. The general-purpose skills it builds on live in public companion
repos — this one is only the Verdict layer.

## What is in here

| Path | What it is |
|---|---|
| `SKILL.md` | **The Verdict production skill — start here.** The hard rules: 34–40 min target, measured voice pace, one voice, free-tier quota discipline, real footage first, images matched to the exact narration second, full-voice islands, hard cuts, real music low, hook as a trailer, verify before handover. |
| `skills/verdict-video-production/` | The same skill + `skill.yaml` (project measurement metadata). |
| `NOTICE.md` | Attribution — this repo is our own original work. |

## Companion repos (public)

| Repo | What it is |
|---|---|
| `video-editing-skill` | The edit standard + ffmpeg tool bench (42 scripts) + effects kit. The Verdict skill routes its edit work there. |
| `youtube-research-skill` | Topic research, hook scoring, title/thumbnail packaging, retention, first-48h push. The Verdict skill routes its research work there. |

## Quick start

```bash
git clone https://github.com/<you>/verdict-skills.git
cd verdict-skills
```

Read `SKILL.md` and follow the pipeline: research → script → narration →
visuals → edit → verify → upload pack → publish.

## The pipeline in one paragraph

Verify every fact before it enters the script. Size the script from the
newest measured voice pace, never 150 wpm. Narrate in one voice inside the
free-tier quota (10 requests/day per project) and verify every part in full
— a part once passed its tail check yet was missing 464 words in the middle.
Match every image to the exact narration second; real footage first. Edit
with hard cuts (no whoosh), the first 1–5 minutes as a trailer, reference
clips as full-voice islands with the narrator silent, and real music low
under the narration. Verify by looking at frames and measuring audio — never
by trusting a build script's summary. Hand over MP4 + thumbnail + SRT +
upload pack.

## Honesty rule

Never call work perfect unless it has been verified. Report measured numbers,
not adjectives, and disclose remaining flaws before the viewer finds them.

## Licence

MIT — see `LICENSE`. This repo is our own original work.
