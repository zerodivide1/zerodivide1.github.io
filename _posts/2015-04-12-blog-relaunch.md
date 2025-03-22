---
layout: post
title: "Blog Relaunch (Again)"
date: 2015-04-12 14:00:00 -0700
comments: false
categories: [ updates ]
---
A few weeks ago, I revisited the thought of how I set up my blog and the rationale about why I chose to run it all
from a VM on [DigitalOcean](https://digitalocean.com) running a couple Docker containers, one with [Ghost](https://ghost.org/)
and the other running Nginx. At the time, I wanted to have a powerful, yet flexible solution, and hosting my own site
through Docker containers gave me the ability to easily set up and connect together various services. It also gave
me the ability to have some "useful" reason for using Docker. For the past few months, this solution worked well and
I was able to claim [a victory for 100% uptime](https://twitter.com/zero_divide_1/status/586038675777179648), though
this victory was likely only given to me due to my low site traffic. And so, given all the flexibility & power I had,
I asked myself whether I really needed such a complex setup for just a low-traffic, personal blog that I rarely have
the time to update?

My inevitable conclusion was No. It did not make sense for me to make such a complicated system just to serve a simple
blog. Not only was it overkill, but it would end up costing me $60 per year to run - although this was a very small
price to pay for a VM in the cloud that I had full control over, again, for a simple low-traffic blog, it wasn't very
cost-effective.

Moreover, despite the fact that I did like how Ghost was in active development and made Markdown blog management easy,
it did not allow me to write posts in separate Markdown text files and upgrades were somewhat painful (due to the theme
I was using - not really the fault of Ghost).

So I began searching for a new alternative, and came across [GitHub Pages](https://pages.github.com/). I had known about
the service for quite some time, but I had never thought to use it - mainly because I was unfamiliar with [Jekyll](http://jekyllrb.org/)
and Ruby. I did not want to have to learn how to set up Ruby on my laptop, then get Jekyll running in order to start
writing posts and just get a simple blog working.

Then I took a step back and thought "Wait a minute, I don't have to!". Again, I thought like a Docker user and found [`gekkie/gh-pages`](https://registry.hub.docker.com/u/gekkie/docker-gh-pages/), a full-fledged Jekyll container that would
allow me to develop locally. Paired with [Vagrant](https://www.vagrantup.com/), I had everything I needed to set up my
new GitHub Pages-hosted blog without having to quickly learn Ruby and everything along those lines - and I didn't need
to install anything.

So I forked the [Jekyll-clean theme](https://github.com/scotte/jekyll-clean) into my own GitHub repo, cloned it to my
laptop, created a Vagrant box (in a separate directory) with the following and I was off to the races:

```
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "williamyeh/ubuntu-trusty64-docker"

  config.vm.network "forwarded_port", guest: 4000, host: 4000

  config.vm.synced_folder "../blog", "/blog"

  config.vm.provision "docker" do |d|
    d.run "gekkie/docker-gh-pages",
      args: "-p 4000:4000 -v /blog:/app"
  end
end

```

After a quick `vagrant up`, I browsed to `http://localhost:4000` and saw the blog. Now I could start editing the site's
config and posts. Easy peasy.

I considered bringing back my old posts, but I think this time around I won't. I will leave them [in the past](http://blogger.seanpayne.name).
If Google ever decides to shut down Blogger, then I'll move them somewhere else. My intent is to leave this space for more
programming and tech-related posts.
