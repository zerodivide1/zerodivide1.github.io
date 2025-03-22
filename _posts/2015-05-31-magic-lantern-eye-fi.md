---
layout: post
title: "Setting up Magic Lantern on an Eye-Fi card for a T3i/600D"
date: 2015-05-31 16:00:00 -0700
comments: false
categories: [ photography ]
---
So today I wanted to take a quick detour from my normal software engineering
posts and talk a little bit about a problem that I finally re-solved for my other
hobby: photography. As many hobbyist photographers know, [MagicLantern](http://www.magiclantern.fm/)
is an awesome open-source alternative firmware for many Canon cameras. I myself
own a T3i/600D and have been using MagicLantern on it for a while now. I also own
an old Eye-Fi GeoX2 card to make it easier for me to geotag and sync my pictures.

A couple years ago I managed to do what many said was difficult or impossible
to do: get MagicLantern to work with the Eye-Fi cards. And the marriage between
the two worked nearly flawlessly for a long time. However, a few months ago, the
card had become corrupted and I had to low-level format the card. From this point
on, MagicLantern did not want to work with the card. It did not help that I did
not note down what I did to get the solution to work. I gave up on it for the
time being, assuming that I would get back to fixing it at some point later.

Well, a much longer time passed than I expected and I now had a new need for my
camera - and I wanted to be able to use MagicLantern's features again. So today
I sat down in front of my computer & began hammering at it to get it to work. I
finally came upon the answer and got it working.

1. Copy the images that are currently on the Eye-Fi card by connecting the card
   to the dongle that came with the card, and let Eye-Fi sync the images. To make
   sure Eye-Fi didn't miss any images, manually copy the images again to another
   place off the card.
2. Eject the Eye-Fi card. Then end the Eye-Fi Helper service.
3. Plug the Eye-Fi card back in, then use Explorer to format the card. Do not do a
   quick format - *do not* select "ExFat" as the file system type.
4. Open the MagicLantern firmware in 7-Zip, then select all the files and drag
   them to the root of the Eye-Fi card.
5. Eject the Eye-Fi card.
6. With the camera off, switch the camera to "M" (Manual) and make sure that
   there are no accessories (except the lens, of course) attached.
7. Insert the Eye-Fi card into the T3i/600D.
8. Turn the camera on. If the firmware update menu for MagicLantern shows up,
   great! Otherwise, press Menu and navigate to "Firmware v..."
9. Click on the "Firmware v..." to update the firmware and enable MagicLantern.
10. Once the menu mentions that the card has been marked bootable, turn the camera
   off, wait about 5 seconds (make sure the busy LED is not illuminated), then
   turn the camera back on.
11. At this point, MagicLantern should be installed. You will notice the time
   show up and the free space of the Eye-Fi show up in the bottom-right corner.
12. Go to Menu > Eye-Fi Settings and Enable the Eye-Fi card to attempt syncing
   again. Once the sync is complete, you can turn off the camera.

As you can see, the process is not very difficult - it just seems like a lot of
steps because I'm a bit verbose. However, from this point, you should be able to
take advantage of both Eye-Fi's syncing and MagicLantern's features on your T3i.
However, don't rely on this - things can still go wrong, as they did for me. Your
results may very.
