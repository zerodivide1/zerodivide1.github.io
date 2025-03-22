---
layout: post
title: "A New Coat of Paint"
date: 2025-03-22 16:40:00 -0700
comments: false
categories: [ updates ]
---

In [my last post]({% post_url 2024-08-18-still-around %}) I had mentioned that I
wanted to update this website's theme, and admittedly that task had been put on
the back-burner for quite a while. I had previously looked at different themes
for Jekyll and come across [Hydejack](hj) and had really liked
it. Unfortunately, at the time, migrating to it would have taken a long time and
I really didn't have a lot of time to expend on it.

After some musings about it, I'd finally decided to sit down for nearly a day
(well, a day spanning part of one night and an afternoon the next day) and
migrate things across.

The first challenge I ran across was related to my old Docker container that I
used to build and preview the site. For some reason, the [official Jekyll Docker container](jdc)
no longer wanted to function and would crash during build. I attributed it to
the fact that I was trying to run it on my Apple Silicon Macbook Pro (M2 Max),
and there may have been some sort of MacOS update that broke the container
(which is marked `x86_64` and thus runs in emulation mode using Rosetta). After
spending an hour trying different things in Docker Desktop, I decided to shelve
the investigation and instead focus on trying to get _some_ sort of container
running with Jekyll so that I could build and preview changes.

Not wanting to spend a ton of time figuring out how to create a container with
Ruby and Jekyll, I came across this [Gist](ghgj) containing a useable
`Dockerfile` that I could quickly build and run Jekyll. After a few tweaks to
use a slightly more-recent version of Ruby and Jekyll (`3.2.2` and `4.4.1`,
respectively), and adding a simple script to update and call `jekyll serve`, I
was finally able to get the Jekyll container running and was able to bring up
my site locally.

After that side-quest, I was finally able to start working on migrating the
site to a new theme. Initially I was hoping to use some of the git-fu techniques
from this [StackOverflow post](so1), but I ran into some significant issues
where some parts migrated fine but then individual posts were looked at, the old
theme would appear for the post. Not great.

Again, I didn't want to side-quest with trying to figure out what was going on,
I decided to shortcut and create an orphan branch, used
[Hydejack's starter kit](hsk) and then just start moving over my posts, assets
and other things into the site, making sure the Jekyll build worked with each
major step.

Next was updating a few assets (e.g. sidebar background) and configuring various
pieces, such as my social media links (or, at least the ones I wanted to
publish).

Finally, I tweaked a few things and got it where I felt comfortable as an MVP.

There was just one thing that I had to do that was a bit more involved: maintaining
my Mastodon page verification. [Mastodon verification][mv] uses an `rel="me"`
attribute on links to the Mastodon profiles in order to verify ownership. This
allows Mastodon to automatically verify that you own a page since the link listed
in your Mastodon profile matches the link to your profile on your page. Its a
neat trick to allow decentralized ownership validation without human intervention.
The problem here, though, was that the [Hydejack template for social media links](htsml)
did not know about how to add the `rel="me"` attribute for Mastodon links.

I knew I needed to compensate for this, but I've never written Ruby or worked
with the Liquid template engine before, but thankfully the change I needed was
small and did not need too much understanding of the syntax to complete. I
created a copy of the `social-list-item.html` from the Hydejack project and
added the following:

~~~html
// File: "_includes/components/social-list-item.html"
{% raw %}
{% if platform == "mastodon" %}
  {% assign rel = 'rel="me"' %}
{% else %}
  {% assign rel = '' %}
{% endif %}
{% endraw %}

<li>
  <a href="{{ url }}" title="{{ name }}" {{ rel }} class="no-mark-external">
    <span class="{{ icon }}"></span>
    <span class="sr-only">{{ name }}</span>
  </a>
</li>
~~~

With this, I was able to have the template engine add the `rel="me"` for just
the Mastodon link and not for the other links I have listed.

So, I'm pretty happy now with how things have turned out. I am sure there are
still other things that I've broken, but I hopefully will find those over time.

I would still like to get comments back and working and, as I mentioned in my
last post, I would like to have those comments sourced from the Fediverse, but
that will be a project for another day.


[hj]: https://hydejack.com
[jdc]: https://hub.docker.com/r/jekyll/jekyll
[ghgj]: https://gist.github.com/BillRaymond/db761d6b53dc4a237b095819d33c7332
[so1]: https://stackoverflow.com/a/37186333
[hsk]: https://github.com/hydecorp/hydejack-starter-kit
[mv]: https://joinmastodon.org/verification
[htsml]: https://github.com/hydecorp/hydejack/blob/c78296b369e12e40ef30210a8818915c3700a2bd/_includes/components/social-list-item.html
