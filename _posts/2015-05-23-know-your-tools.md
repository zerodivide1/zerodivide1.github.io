---
layout: post
title: "Know Your Tools"
date: 2015-05-23 14:00:00 -0700
comments: false
categories: [ development, tech ]
---
A few weeks ago I was given the opportunity to give a presentation to the dev
team at work on [Docker](http://www.docker.com) and how it could help us from
a development perspective. It was a timely presentation as our team recently
began transitioning from one version of our flagship product to another, where a
lot of the underlying technologies have changed drastically. However, because we
will still need to support the currently-released version of the product, it
means that our developers would need to reset their development environments
in order to diagnose customer issues frequently. The prospect of having to pivot
our development environments presented a serious challenge for us, since setup
for each environment is non-trivial.

Now, I've been a fan of Docker since I first heard about it in 2013, and have
actively used it since then. But because of how stable the platform is, and the
nature of my job, I never really had many chances to really dive into the more
recent updates to the Docker ecosystem. However, when I did some more research
for my presentation, I found out about
[Docker Machine](https://docs.docker.com/machine/),
[Docker Compose](https://docs.docker.com/compose/),
[Docker Swarm](https://docs.docker.com/swarm/), as well as a number of other
Docker-related tools. It made sense that I wasn't aware of these very useful
tools since the containerized-application space has been changing rapidly in the
last couple years, but I did not realize how much.

This realization that I did not know about these useful tools made me realize
that there are many tools out that I use that I may not fully understand or
are not up-to-date with. So, how does one keep up-to-date on developments for
some of the most useful tools? I'm not sure, but I would suggest subscribing to
GitHub projects, email lists and RSS feeds to be notified of changes. Or,
whenever running a tool, check for updates to the tool and reading the changelog,
if there is one.

Finally, don't settle for "that's just the way it is." Always look for new ways
to do something. For instance, for a long time I used standard Docker `--link`
arguments to link containers, but with Docker Compose, I no longer need to deal
with linking containers at runtime.

_This post is about 2 weeks overdue. I had the first paragraph written and had
a really good post, but I forgot what my point was when I got sidetracked and
didn't return to finishing this post until must later. I'm sorry it isn't as
useful as it could be._
