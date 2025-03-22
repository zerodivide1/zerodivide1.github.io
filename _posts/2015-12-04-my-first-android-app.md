---
layout: post
title: "My First Android App"
date: 2015-12-04 15:50:00 -0700
comments: false
categories: [ development ]
---
Since I purchased my first Android device, the much-loved
[Nexus One](https://en.wikipedia.org/wiki/Nexus_One), I have had a desire to
build and distribute my first app for the Android platform. Unfortunately, with
each attempt on starting an app, I ran four of the most difficult roadblocks
for a hobbyist developer: getting an idea for an app, finding the time to work
on an app once an idea was found, not getting into paralyzing infinite loop
of restarting the project each time the platform changed, and feature creep.

Finding good app ideas was never a hard thing for me, but finding one that I
could work on in a short period of time and had a small scope that a single
hobbyist developer could work on was another. Though I am certainly an
experienced Java developer, working with the Android platform in itself has a
small learning curve. Moreover, the ideas I had usually involved some sort of
webservice as well, complicating the project in many ways. Questions like "What
framework should I build it with?" and "What sync mechanism should I use?" to
"How much is it going to cost to host this service?" and "What should I do about
securing user data?" swam through my mind. The complications made the walls
steep, and the first lines of code had not even been written yet. These
questions usually discouraged progress, even though most of the answers to the
questions were "Who cares? Deal with it later."

However, there were other times when I came across ideas for self-contained apps
that were fairly simple. I've repeatedly had one such idea, which essentially
was a way for me to stop using Google Forms to track some information and use an
app instead. It had a well-defined scope, and allowed me to explore some of the
most important parts of the Android platform. But after starting the project,
making some progress, and pausing to spend time on the other things that my life
demanded my attention on, I found it difficult to go back to the project and
continue where I left off, mainly for my third roadblock.

Whenever I had time to return to my app projects, Google released a new version
of the Android platform. In earlier versions (pre-Honeycomb), this usually
wasn't a big deal since a lot of the changes were enhancements to the platform.
However, after Honeycomb, there were a lot of UI-related changes: Fragments,
Holo, then Material. I wanted the UI of my app to look-and-feel like it belonged
on the platform. Rather than try to refactor the current code (which wasn't
much), I figured I'd restart the project, using the new paradigms from the
beginning. This caused me to restart the project quite a few times.

Then, with each platform update, I got more ideas that could be put into the
project. And with each idea, I'd stop what I was doing and start on the new
idea. Sometimes, the new ideas were changes to things that I had already done,
causing me to rewrite pieces over and over again. Feature creep and refactoring
hell were my enemies at this point and my projects were caught in a state of
perpetual "IN PROGRESS".

It actually became a joke for me. I had been a part of the [San Diego Android
Developers Group](http://www.meetup.com/Android-Developers-Group/) for many
years, practically from its start, but I hadn't finished a single app. Long-time
members of the group knew me and knew the problem I had. It was't a technical
problem, just a [PEBCAK](https://en.wiktionary.org/wiki/PEBCAK) one. However,
this past November, an app idea was sparked in me, with a small scope and with
such limited UI (read: almost none) that it was nearly impossible for me to get
caught up in the vicious stagnation cycles that paralyzed me in the past.

The idea stemmed from an annoyance I had with my fiancee's sister's (let's call
her A) use of Instagram. Since she had a tight-knit family and I was a part of
it, I wanted to be involved in family (having known her sister since they were
pretty young). The issue was that A wanted to keep some pictures she came across
on Instagram. In order to do this, she would reshare the original post, open the
image and screenshot it, then delete the post. However, because I had post
notifications for her, I'd see a post notification pop up on my phone, but when
I tried to open it, Instagram would complain that the post had been deleted. It
was rather annoying.

I also felt it was pretty annoying that Instagram didn't have a facility to save
images to the device - but there were ways. I had had enough of the annoying
notifications (she is a teenager, so you could imagine the volume of
notifications I would receive), but didn't want to sacrifice not receiving the
notifications for her. So, after doing a little bit of research into the
capabilities of the Android platform, I found a quick solution that almost
required no UI. After one spending some time one Saturday coding it up, I had
not only a working prototype, but a nearly-finished app (yes, the requirements
of the app were that small).

I finished the app, and knowing that in order to distribute updates to the app I
needed to use the Play Store, I published my app (at the time of writing this,
the app is in public beta) so that when I fixed problems or added features, she
would automatically get them on her device. Unfortunately, the original name of
the my app was already taken (ironically enough by another app that did pretty
the same thing mine did), so the first submission was rejected by Google.
However, after renaming it and retrying, it was accepted as Keepagram and
published.

So, that's the long story behind my first app, Keepagram. It is embarrassingly
simple, and in no way a shining example of the depth and breadth of my skills as
as software engineer, but as someone who has been paralyzed by making my pet
projects overly-complicated, I am very proud that after so many years I have
finally been able to get something done.

If you'd like to join the public beta for the app, [click
here](https://play.google.com/apps/testing/name.seanpayne.keepagram). I am
definitely looking for feedback on it, so feel free to let me know what you
think.
