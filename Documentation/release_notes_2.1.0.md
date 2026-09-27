# App Store Connect copy — 2.1.0

Paste into the 2.1.0 submission. Limits in parens.

Still requires tvOS 26.

## Subtitle (30)

```
Jellyfin for your Apple TV
```

## Promotional text (170)

```
Now caught up with the latest Swiftfin: sidebar tabs, filters on the big screen, season pages, a Live TV guide. And every Reefy binge-watching feature made the trip.
```

## What's New (4000)

```
Reefy is built on Swiftfin, the open source Jellyfin app, and for a long time I was hand-porting every fix they made because my version had drifted so far from theirs. Not anymore. Rebuilding on their 1.5 release back in July is what made this one possible, I pulled in everything from Swiftfin 1.6, 1.6.1, and what's landed since, in an afternoon instead of a month.

So what's new? Mostly their work, and it's good work:
- The tabs moved into a sidebar. Liked the old bar across the top? It's still there, Settings > Customize > Tab bar
- Filters in your libraries, on the Apple TV, finally
- Season pages, and a cleaner item page with the version and track pickers sitting with the rest of the buttons
- A Live TV guide, plus recordings
- New settings for max resolution, forcing subtitle burn-in, hiding recommendations, and hiding poster labels
- Leave the app mid-show and it pauses now, instead of playing to an empty room

Everything Reefy did for watching a series straight through is still here. The up next card, skip intro, next episode during the credits, subtitles that stick for the whole show, and a Next Up row that actually updates when you finish something.

A couple of my own extras are gone, the old filter bar and the icon-only tabs, because Swiftfin built their own. That's the point. Every piece of Reefy that Swiftfin picks up is one less thing I have to carry.
```

## TestFlight — What to Test (4000)

```
Still needs tvOS 26.

This one's a big catch-up with Swiftfin, so I'm less worried about a new feature being broken and more worried that something Reefy already did got lost in the merge. Help me find it if it did.

What I'd poke at:
- The new sidebar. Hit every tab, then flip to Centered in Settings > Customize > Tab bar and do it again
- Filters in your libraries
- Watch a show straight through, two or three episodes. Up next card in the last 30 seconds, skip intro if your server tags intros, next episode during the credits. Back out of the card a couple of times too
- Subtitles across episodes, then turn them off. Does off stick?
- Mash Menu during playback. You should never land on the Apple TV home screen
- Finish something and go back to Home. Has Next Up moved on? It should have
- If your house has more than one Jellyfin user, sign in as both and switch back and forth a few times

If something breaks, send me your Apple TV model, tvOS version, and Jellyfin server version. That's usually enough for me to chase it down.
```

## Keywords (100)

Unchanged.

```
jellyfin,server,stream,home,theater,movies,shows,vlc,library,subtitles,4k,hdr,dolby
```

## Notes

Upload is still blocked on the missing Apple Distribution certificate. See the signing note in
the release checklist.
