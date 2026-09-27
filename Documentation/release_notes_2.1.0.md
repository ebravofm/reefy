# App Store Connect copy — 2.1.0

Paste into the 2.1.0 submission. Limits in parens.

Still requires tvOS 26.

## Subtitle (30)

```
Jellyfin for your Apple TV
```

## Promotional text (170)

```
Caught up with the latest Swiftfin: a new sidebar, filters on the big screen, season pages, and a Live TV guide — on top of everything Reefy already did for series.
```

## What's New (4000)

```
Reefy is now current with Swiftfin, the open source Jellyfin app it's built on. That's everything in their 1.6 and 1.6.1 releases plus what's landed since, and all of Reefy's series features come along for the ride.

New from upstream:
- A sidebar for the tabs. Prefer the classic bar across the top? Settings > Customize > Tab bar.
- Library filters on Apple TV
- Season pages, and a cleaner item page with the version and track pickers next to the other buttons
- Live TV guide and recordings
- New settings: maximum resolution, force subtitle burn-in, hide recommendations, hide poster labels
- Playback pauses when you leave the app

Still here from Reefy: the up next card, skip intro, next episode during credits, subtitles remembered per series, and Next Up refreshing as soon as you finish something.

A few Reefy extras retired because Swiftfin now does them itself — the old filter bar and icon-only tabs are gone in favor of the new ones.
```

## TestFlight — What to Test (4000)

```
Still requires tvOS 26.

This one is a big upstream catch-up, so the risk is less "new feature broken" and more "something I did before got lost in the merge."

Worth beating on:

- The new sidebar. Move around every tab, then switch to Centered in Settings > Customize > Tab bar and do it again.
- Filters in your libraries.
- A series end to end. Up next card in the last 30 seconds, skip intro if your server tags intros, next episode during credits. Back out of the card a few times too.
- Subtitles across episodes, including off.
- Menu everywhere during playback. It should never bounce you to the Apple TV home screen.
- Finish something and check Home. Next Up should already have moved on.
- If you use more than one Jellyfin user, sign in as both and switch back and forth.

If it breaks, send your Apple TV model, tvOS version, and Jellyfin server version.
```

## Keywords (100)

Unchanged.

```
jellyfin,server,stream,home,theater,movies,shows,vlc,library,subtitles,4k,hdr,dolby
```

## Notes

Upload is still blocked on the missing Apple Distribution certificate. See the signing note in
the release checklist.
