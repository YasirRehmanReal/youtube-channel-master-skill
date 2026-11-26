# yt-community

> Custom skill, written 2026-11-23 for a faceless long-form channel (Yasir's idea:
> the Community tab is an untapped growth lever — other channels pull big
> views and subscribers from it). In Muse there are no /yt-* slash commands;
> load this skill by name via `muse.skill_search` when the task matches.

The Community tab is a second feed. At 0 subscribers it is empty and
invisible — every post is a chance to be discovered, to warm up the next
video, and to turn a viewer into a subscriber. Post like a channel that
already has an audience, and the audience arrives.

## The system

- **Cadence: 5–10 posts a day** (Yasir's target). Never 5–10 identical
  posts — vary the type every time so the tab reads as a feed, not spam.
- **Every post is verified.** One real fact from a real source (case file,
  news report, court record), with the source named. Never invent a number,
  a quote or a result. If a claim cannot be sourced, the post does not go out.
- **Every post has one CTA.** Comment, subscribe, share, or watch — one per
  post, phrased as a question or a dare, never as begging.
- **Warm-up before every video.** A video that appears cold gets cold views.
  Tease the case 2–3 days before it drops, then launch hard on the day.

## Post types (rotate through these)

1. **Warm-up fact** — one shocking, verified fact from the upcoming case.
   No video link yet; end with a question.
2. **Poll** — "Who do you think did it?" / "Which case next?" / a
   two-option whodunit. Polls are the highest-engagement post type.
3. **Launch post** — the video is live: one-line hook + video link +
   "watch now" CTA. Goes out the hour the video publishes.
4. **Swipe carousel** — a multi-image post (up to 5 images) telling a
   mini-story: hook image → evidence → twist → CTA. The last image always
   carries the subscribe/share ask.
5. **Evergreen fact** — one surprising fact from an already-published video
   + its link. Keeps old videos earning views.
6. **Behind the scenes** — a research note, a thumbnail option vote, a
   "this case took 3 days to verify" post. Makes the channel feel alive.

## Warm-up flow for each video

- **Day −2:** warm-up fact + poll about the case.
- **Day −1:** the mystery question + one strong image (no video link).
- **Launch day:** launch post + swipe carousel + Shorts cross-post.
- **Day +1:** the best fact from the video + a discussion question.
- **Day +3:** evergreen fact from the same video + link (second wave).

## How posts get written and posted

- Prepare posts in batches in `<channel-workspace>/community/`, one file
  per day (`YYYY-MM-DD.md`), each post numbered with its type, full text,
  image paths, and scheduled slot. Write a day ahead, never same-hour.
- **There is no API for Community posts.** They go up through the browser
  (youtube.com or Studio) on your channel. The
  Google account defaults to Wazifa in Islam — **check the channel
  switcher before every post**. Posting to the wrong channel is the one
  unforced error here.
- Images: real case images, evidence photos, maps, timelines — the same
  sourcing rules as video visuals (real first, public record or CC0/CC-BY,
  no victim face, no child, no blood). Thumbnails may use real faces per
  Yasir's 23 Nov rule; Community images follow the same rule.
- Log every published post (date, type, text, link, likes, comments) in
  `<channel-workspace>/community/LOG.md`. Review weekly: which types and
  which cases earn comments and subs, and shift the mix toward them.

## What never goes out

- An unverified claim, a spoiler framed as fact, or a title/thumbnail
  promise the video does not keep.
- The same post twice, or near-identical posts in one day.
- Anything about another channel's business, or any comment on a live
  investigation that could prejudice it.
- A post to the wrong channel. Check the switcher. Every time.
