---
layout: post
title: "Two Factor Social Verification in the World of AI"
date: 2025-03-31 21:35:00 -0700
comments: false
categories: [ thoughts, tech, ai, security ]
---

# Two Factor Social Verification in the World of AI

Recently I've been watching the increasing rate of advancement in generative AI
with a mixture of amazement and anxiety. I won't get into the debates about
whether it deserves to exist and its impact on the planet and humanity, or
whether or not its adoption into nearly everything attached to the Internet is
warranted as I feel there are plenty of arguments on both sides about it out
there in other corners of the Internet written by people who can treat the
subject with more finesse than I would be capable, but I do feel that the rate
of advancement can be problematic as culturally we have not adjusted to combat
its exploitation in social engineering attacks.

## Background
During the pandemic, I watched the YouTube music videos from
[There I Ruined It][yt-tiri] with amusement as the voices of musicians were
either manipulated or completely generated using AI to match the tune of
completely different melodies, singing songs that they definitely wouldn't have
performed. It was amazing to see and hear these, but did start a growing concern
in my mind as it did with a wide host of its audience, that while it
demonstrated that it was now technically feasible to fake a person's voice to
say whatever you wanted for entertainment purposes, it was not a far leap to see
how the same technology could be developed, refined and used in more serious
use cases.

In fact, entertainment industry professionals were concerned about its use by
production studios to utilize actors' and actresses' likeness and voices in
completely computer-generated material without the human person receiving
compensation for it. More worryingly, with the increasing political polarization
of the entertainment industry, the entertainment industry expressed additional
concern that an actor's visual likeness or voice could be used to promote
content or agendas that do not align with the actor's personal beliefs. In fact,
in a similar vein, this was recently demonstrated with a completely generated
[viral video][yt-fukw]<sup>[2]</sup> depicting a number of famous individuals
flipping off the camera in protest of Kanye West and some of his recent
anti-semitic comments online.

Furthermore, while listening to
[episode 298 of the Defensive Security Podcast][dsp], the hosts Jerry Bell and
Andrew Kalet discussed how the tech was beginning to be used for more
sophisticated phishing attacks on businesses and individuals, and how there
still were not very good and widely-adopted practices to combat these new
vectors of attack. In the podcast, they also referenced an interesting and
fear-inducing demonstration on
[60 Minutes by Rachel Tobac of Social Proof Security][yt-rt-60m] wherein she
demonstrated a novel social engineering attack utilizing Generative AI to
generate vocal speech that sounded like a journalist in order to phish sensitive
information from a fellow journalist.

While researching the links for this post, I came across the
[Artificial Intelligence Incident Database][aiid], which is an interesting
timeline collection of AI-related news articles illustrating some of the
difficulties around AI right now. I recommend having a look if you're
interested.
{:.note}

## Problem

One of the major human problems with Generative AI and the technologies around
deepfakes is that there is not currently a way to adequately detect when
someone is being exploited by a deepfake during an active, real-time attack.
Humans have used speech recognition and visual confirmation as methods of
verification and validation of the legitimacy of a person for millennia, and
only recently (relatively in human history) started to use shared secrets as
social proofs to combat social engineering attacks.

At someone who deals with personal and protected health information at work,
I've gone through many different trainings discussing how to spot
phishing and other social engineering attacks, such as the training materials
that discuss the infamous cases of CEOs or other executive-types demanding
funds transfers or access requests be completed quickly via some form of
text-based interaction such as text messages or emails. The trainings often
discuss how to spot these sort of exploits, and some try to to drive home the
point that processes should be followed to avoid being lured and exploited and
potentially causing a costly incident. While these points still hold true today
in the business world even in the context of Generative AI, they often don't
really help the employee in their daily interactions outside of work with their
own personal contacts, where things like funds transfer processes either are not
established ahead of time, or don't really exist at all. So while security
training exists for businesses to teach employees how to spot bad actors and
prevent costly security incidents, these trainings largely benefit and protect
the business but don't do an adequate job of supplying employees with adequate
skills and tools to protect themselves against bad actors who may be
impersonating friends or family members.

So, during the last couple years where I've watched these huge advancements made
to the technology, I've been trying to think of some somewhat easier-to-adopt
processes that both business and ordinary people could adopt to protect
ourselves from actors who intend to misuse the technology for unlawful gain. In
particular, I wanted to solve the problem of how we could adopt a process that
validates the legitimacy of another person during a live conversation, such as
over text messages and over phone or video calls.


## Challenges

People are often not too willing to change their habits and routines, and really
only respond to changes in processes at work as there are financial incentives
motivating them to adopt and adhere to policies. Because of this resistance to
change, I believe it will be difficult to come up with a solution that will be
widely adopted. I feel this way because, even after repeated recommendation by
many well-respected security professionals and prominent news broadcasts and
articles, adoption of password managers and the use of randomly-generated,
unique passwords for each unique login is still a practice a large number of
people have still not yet adopted.

To this, any solution that I came up with must be:

* Easy and simple enough to utilize,
* Doesn't require a huge amount of technical skill,
* Leverages tools the adopter would hopefully already have, like a password
  manager, or would encourage them to start using a password manager, and
* Encourages adoption of other good personal security practices.

## Solution

As a software engineer, it is often a reflex to think that because no exact
solution exists or is widely-adopted, then I could create a solution to fulfill
the need. However in this particular case, I felt that the problem didn't
require an overly-technical solution as the problem is largely a human one. The
tech space is already filled with many highly technical solutions utilizing
encryption, so I don't feel that any technical solution that I could come up
with would necessarily benefit in an already crowded space. Furthermore, as a
human problem, I don't feel that a technical solution would really be
appropriate because technical solutions often do not stick well.

Now, you may be asking yourself: "Okay, Sean, you are a technical professional
and you've written a lot already and I've just spent the last several minutes
reading this post expecting a novel technical solution, but now you're saying
that you think that there isn't a technical solution. Are you wasting my time?"
My response is definitely "No, I'm not wasting your time." Please bear with me
as I explain.

In short, my solution involves the use of a modern password manager to allow
a shared secret value to be stored by two individuals and whose value can be
independently accessed and communicated to each other whenever those individuals
need to validate the other person's legitimacy. Moreover, the shared value
should change periodically automatically, so that if the shared secret value
were to be leaked, its validity is relatively short-lived. Now, if you have been
reading into that closely, it sounds a lot like the One-Time Passcodes (OTP)
that are commonly-used by websites online alongside a username and password as a
form of Two-Factor Authentication, and you definitely would be correct.

But, you may have some concerns because, what if the vault containing these OTPs
is compromised? Here is my added layer: the vault does not contain just a single
OTP that each person can refer to, but instead there would be a set of them, and
determining which of them to use is based on some criteria that each individual
establishes independently outside of the vault.

For example, suppose a couple needs to protect their shared bank account, and
sometimes the couple discusses maintenance of the bank account over the phone,
such as one calling the other to have them transfer money to one of their
creditors as they've forgotten to pay a bill before they set off for business
travel and it is now due. In a situation such as this, the person on the end of
the line needs to verify the other person asking to perform the funds transfer
is actually their partner. They do have a secret code or phrase, but as the
person is traveling and not in a place they feel comfortable revealing this
secret phrase, they instead both log into a shared password vault on their
phones and pull up the entry they've designated for these proof challenges.
The entry has 14 OTPs that rotate every minute. Now, before the travel, the
couple discussed that if they had to use this entry, the pattern they would use
to determine which of the 14 OTPs they would say to each other was that they
would use the OTP corresponding to the day of the week, skipping every other
entry. Since it was a Wednesday and their pattern starts on a Sunday, they would
choose the 7th entry (Sunday = 1, Monday = 3, Tuesday = 5, Wednesday = 7, etc.)
and the traveling partner would say the digits of the entry to the other over
the phone without revealing which one they were saying. The other partner could
listen to their partner reading off the digits and visually confirm it in their
own phone's display, allowing the partner to be reasonably assured that the
person on the other end of the phone is actually their partner and the request
could be completed.

This practice can also be used in duress situations, where a separate pattern
for the OTPs could be established to signal that one person is under duress.
Leveraging the example above, if the traveling partner was asking to have funds
wired to a specific bank account while they were traveling because, for
instance, they said they lost their wallet, but in reality they were being
extorted and were threatened not to reveal the situation to their partner, the
partner could instead read off even entries that were previously discussed as
being entries used to indicate duress, so they read off the 8th entry instead.
This allowed the discussion to continue but to indicate to the partner that they
need help but can't explicitly ask for it due to the sensitive situation.

The two-factor social proof solution I outlined and demonstrated above is simple
enough to be utilized by people with at least a working understanding of how to
use password managers, but it is far from perfect and there are still a number
of problems that it does not address and I've not yet figured out. For instance:

* This solution works well for people who are close and may be utilizing the
  same password manager to manage these OTPs, but doesn't address how to handle
  situations where the two individuals are not using the same password manager
  or can not share an entry between the two easily. This, unfortunately, is a
  challenge that I do not have a simple answer for unless password manager
  developers can coordinate on a common way to generate these and share them
  between people ahead of time securely.
* The solution still requires some semblance of good technical and security
  hygiene. Specifically, it requires that people have already set up password
  managers. As I mentioned before, my intent with this solution is to also
  encourage good security practices, so this solution attempts to reinforce this
  by utilizing the tool in another use case.
* The availability of tooling to support this solution. I have successfully used
  this between my partner and I, but I also have enough technical skills to have
  created my own scripts to generate the OTP tokens and store them into the
  password vault that my partner and I use. I have not yet made my
  proof-of-concept code available yet - and I hope to publish it in a subsequent
  post, but even if I did, I do have concerns about how people can utilize it
  securely and effectively. This is something I think will require a technical
  solution and, as I mentioned before, hope that I can do it with the help of
  password management software developers in order to make it an easier practice
  to adopt.
* This solution may still be very difficult for older generations to understand
  and/or even adopt. It is commonly known that as people age, memory becomes
  more and more of an issue, so remembering a rule about which values to use to
  validate the person on the other end of a phone or video call will be more
  difficult. And, because of this, it will require more mental effort and some
  older folks do not have the patience to follow what is otherwise good security
  processes and bypass it altogether in order to get what they want done. I do
  not have a good answer for this, but it is definitely an important area as
  this group is the most vulnerable to these types of social engineering
  attacks.

I feel Generative AI is still in its infancy and while it continues to improve,
and find its place in the tech space, I think the human culture around it has
yet to fully understand its affect on society and human-to-human interaction,
and as a result I feel that a large percentage of people are at risk of being
exploited with it, especially older generations who are less familiar with
modern technology and are not as mentally agile to adjust to its rapid changes
as their younger peers. I think people should begin to take personal security
more seriously and start adopting common security practices in order to protect
themselves and their peers from the increasingly sophisticated social
engineering attacks of bad actors. I know that my proposed solution is far from
a perfect one, but I hope that my ideas here start some conversations among
security professionals and technologists to help create more secure and
human-friendly approaches to protections against exploitation in this era of
Generative AI, but also the journalists and creators who may be better equipped
with the skills to translate these ideas into formats that are more easily
digested so that people can elevate their personal security hygiene.


[yt-tiri]: https://www.youtube.com/@ThereIRuinedIt
[yt-fukw]: https://www.youtube.com/watch?v=qM4DC2fsNAE
[2]: https://incidentdatabase.ai/cite/930/
[dsp]: https://defensivesecurity.org/defensive-security-podcast-episode-298/
[yt-rt-60m]: https://x.com/RachelTobac/status/1775183500322414874
[aiid]: https://incidentdatabase.ai/
