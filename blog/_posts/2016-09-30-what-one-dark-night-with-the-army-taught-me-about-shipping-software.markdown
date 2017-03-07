---
title:  What One Dark Night with the Army Taught Me About Shipping Software
date:   2016-09-30
tags: Article
author: Baxter Mante
layout: post
---
Not many people know I spent time in the Army many moons ago. I guess I don’t look much like G.I. Joe, so I can appreciate their surprise when this is uncovered. Nevertheless, it’s true; I joined the military six years ago.

<br>
<figure class="image-container">
    <img src="https://cdn-images-1.medium.com/max/800/1*6zbiHhNIda39PTNIsjeAyQ.png" alt="GI Joe"/>
    <figcaption>Yeah, that ain't me.</figcaption>
</figure>
<br>

Naturally, I learned a lot— more things than I had anticipated. But what’s been most surprising is how the half-life for these lessons has extended beyond the barracks and STX (situational training exercises). I probably shouldn’t be surprised, but they’ve been useful in my day-to-day work.

I thought I’d share one of those experiences.

***
<br>


I now work as a Product Manager for a growing software company. The two worlds don’t seem obviously-related. They aren’t at first glance. I don’t wear a uniform, and I don’t have to shave every morning (thank. god.). There are no guns or Humvee’s. Despite this, it’s been sort-of-astonishing how many times I’ve connected something back to an experience I had in the Army.

Recently, our team has struggled with the idea of how much “process” we want. There was a vague understanding that more was needed, but exactly “how much” was left to debate. Some? A smidgen? A lot? There was no clear-cut answer. There rarely is.

For context, we’ve been growing quickly since we launched our product in 2009. We added seventy-five new teammates just this past year. As the team grows, things understandably get more complicated. Communication becomes more difficult. Decisions can take longer. There are more viewpoints to account for. Like anything, there are trade-offs. There is also more collective experience. More diversity in thought. More hands to help.

Our application is also segmented into three smaller products, and the needs, constraints, maturation, and user expectations for the three aren’t always the same. This poses a challenge to deciding how we want to update and maintain the application. We are one team, with one code base, three primary products, and many different visions for how much process we need on the dev side of the house. Do we need managers? Should we all be forced to use the same release process? Do we need to build specialized development tools? We even joke that one engineer was named “Rules” while the other should be called “Guidelines.” We are at an impasse.

Somehow this triggered a memory from the Army in my strange brain.

***
<br>


Flash back to 2010. There I am. Twenty-two, clean shaven, wide-eyed. The very picture of youth. (haha) I’m at Fort Knox, Kentucky. It’s July — that means the ambient temperature is “face-of-the-sun” and the humidity is at “monsoon rain storm.” I’m miserable.

There are dozens of young soldiers just like me spread out, lying prone on the gravel that borders the edge of a jungle that looms just in front of us. Our dirty, “digital” uniforms and patrol caps blend in with the grey color of the gravel, and we look like a peculiar pattern of many-colored faces dotting the ground. It’s dusk, and soon each face is accompanied by a sudden eerie red glow — the filtered light coming from each of our flashlights. There’s something alien about it all. We’re all silently scribbling and making notations on small maps laid out in front of us. No one speaks. Shortly after, one of us abruptly gets up and heads steadfast into the dark forest. It swallows him whole. The only thing you can see is that red orb bouncing up-and-down and then disappearing into the black. Soon after, another soldier sprints into the forest. She’s gone. Then another. One-by-one we‘re all eventually consumed by the jungle. We’re all after something.

<br>
<figure class="image-container">
    <img src="https://cdn-images-1.medium.com/max/800/1*MZAUF6s4Kc7tcULLYprehA.jpeg" alt="Night land nav"/>
    <figcaption>Source: https://warriorforge.files.wordpress.com/2012/06/nightlav.jpg</figcaption>
</figure>
<br>

We were practicing something called “night land nav.” — one of the many fun things you’re introduced to in the military. It’s the Army’s twist on hide-and-go-seek. You’re taught how to get around using a map, protractor, and a Tritium-illuminated Lensatic Marching Compass. It makes sense, really. Soldiers should be able to get to important way-points.

The objective is to locate several small metal stakes hidden throughout the terrain. The stakes are each separated by several kilometers, obscured by vegetation, and are only a meter tall. Each is equipped with an alpha-numeric label and a “clacker” that you use to stamp a card you’ve been given to verify you’ve found an assigned way-point. You can only use red-colored light, or else you’d compromise your night vision. It’s an individual endeavor. You aren’t allowed to collaborate; you can’t consult your battle buddy. There’s a time limit.

Truth be told, this was one of my favorite exercises. I love being outdoors. I enjoy having a clear purpose, and I liked the time to myself (something that’s a rarity in the Army). I also had a natural affinity for it; I am a stake-locating machine.

Obviously, the Army doesn’t point young soldiers toward the jungle and tell them, “Good luck.” Prior to stepping off we’re all prepared with some simple tactics we can employ to accomplish our task. (Gasp! A small process of sorts.) Simple tactics.

It’s fairly basic in theory, and somewhat more complicated in practice. You have a map that’s divided into equal-sized squares. The squares are organized into a grid, and the grids all have corresponding coordinates. This is the [Military Grid Reference System](https://en.wikipedia.org/wiki/Military_grid_reference_system) (MGRS). You’re provided a sheet of paper with several eight-digit grid locations for your stakes. The eight-digit location is accurate to within ten meters (around thirty feet). You start by sitting down and using your protractor and pencil to plot your points on the map and get a lay of the land. You usually take note of identifiable terrain features — like spurs, draws, hilltops, cliffs, saddles. You can triangulate your position on the map by using these landmarks later on. You’re taught how to measure distance by walking a hundred meters and counting the number of times your left foot strikes the ground. (My pace count is sixty-three left steps to every hundred meters.) The lensatic compass allows you to determine direction. You formulate a basic plan, and then head off.

<br>
<figure class="image-container">
    <img src="https://cdn-images-1.medium.com/max/800/1*wYUMgoAbBlQUWOb0ipw75g.jpeg" alt="Compass"/>
    <figcaption>The tools of the trade</figcaption>
</figure>
<br>

There I was. It was hot outside. My uniform’s coarse cloth was now heavy and sticking against my skin, which irritated the many insect bites peppered along my arms and legs. I only had a few hours to find the stakes spread out across the Ft. Knox jungle.

Like the others, I was lying prone on the gravel, which made it difficult to lay the map flat. It was hard to make out the green-colored terrain markings in the red light. The pencil couldn’t be bothered to work in the rain. But I got it done. I made a basic plan. I had a way forward, and I headed off into the darkness.

My plan went to shit pretty quickly. The route I had planned was flooded at a certain point, and I had to take a long detour. The clearing I had wanted to traverse as a shortcut was now overgrown. My current circumstances forced me to reevaluate. Improvise. Adapt. I persevered onward. I trusted myself to overcome the obstacles. I still had the same simple strategies I could use over and over again to reshape my plan.

Sometimes my new plan would work as if by magic or divine intervention. Everything went smoothly. I’d shoot an azimuth, count my steps, and would be rewarded with a satisfying CLACK at the stake. Success. I was learning. I realized I could anticipate where flooding might be by looking closer at the contour lines that indicated elevation on the map. Even still, the plan would inevitably turn to shit again.

No kidding, my flashlight broke. I could hear the pieces rattling inside the housing. Its music seemed to celebrate and mock my impending doom. Luckily, the Army preaches “one is none; two is one.” I had a back up, but this light was much smaller and less powerful. It was almost impossible to see. My fortune had turned; the land-nav gods had looked down on me again. Nonetheless, I steadily reached my way-points.

A few hours later, you could hear me crashing through the forest like a drunken bear. I was sprinting wildly toward my last point. I was in a foot race against time. The amazing thing was I didn’t have any discomfort. I wasn’t over-heated anymore. I didn’t notice the insect bites. The rain didn’t bother me. I later discovered I had formed a blister on the bottom of my left foot that spanned its entire length. It had swelled up and deflated like a forgotten birthday balloon. I hadn’t noticed. I hadn’t noticed because I was absolutely focused on the task at hand. I was like Gollum in pursuit of the One Ring.

<br>
<figure class="image-container">
    <img src="https://cdn-images-1.medium.com/max/800/1*SstySOHOtdJXgOPBAw7ZcA.jpeg" alt="Gollum"/>
</figure>
<br>

I arrived to a small opening in the woods. Panting. Crazed. Wild-eyed. My calculations had indicated my last stake would be nearby. But where was it? Had my faulty plan betrayed me again? Had my compass broken, and led me astray? I could have panicked. I nearly did. Instead, I returned to my simple strategies.

Remember, the eight-digit grid is only accurate to within ten meters. I had been taught how to handle this. I just needed to make slowly-widening concentric circles around where I thought the point should be. Eventually, I’d have to run into the stake as I completed my orbits.

I made one loop.

Nothing.

Faithfully, I made two more loops.

Not a thing.

I started to doubt. I had to continue on.

At the start of my next cycle my boot struck something. It struck victory. (haha) My nemesis now stood at my feet. Its little steel body was twisted downward toward the wet ground and was partially covered with undergrowth — making it difficult to see. But its trickery had been no match for this cool-headed warrior. I bent down and moved the brush aside.

“A15”

I’d remember the name. May it R.I.P. (This foe.) I grabbed the clacker, punched my card, and began the long trek back to the staging area.

A while later I returned to where it had all started. The eerie red glow had been replaced with an inky purple in the absence of the many flashlights. I turned my card in, changed out of my wet uniform, and unpacked my sleep system. Exhausted, I crawled into the camouflaged bivy sack and quickly drifted off to sleep. The clouds had cleared by now. (Of course, that was my luck.) I remember the upright trees had cut the silhouette of an elephant into the night sky — its trunk spotted with a famous constellation.

<br>
<figure class="image-container">
    <img src="https://cdn-images-1.medium.com/max/800/1*f0AS6w5WNN2B6EYkymg8lw.jpeg" alt="Night sky"/>
    <figcaption>source: http://www.onelifeonewhistler.com/wp-content/uploads/2014/09/SC-Trees-Night-SKy-SGD1.jpg</figcaption>
</figure>
<br>

***
<br>

> *Cool story, bro. But what’s this got to do with the maintenance of software?*

Okay, okay. I admit: I’ve been a bit tangential. I’ll loop it back now. How does this story relate to that dilemma at work — the impasse? For a while, I wasn’t sure where I stood on the whole thing. On one hand, It would be nice to have some clear-cut rules. On the other hand, I was afraid we’d end up creating miles of red tape. I mulled it over. It wasn’t an easy problem; there were merits on both sides. I realized my brain had done me a solid by dredging up this old memory. There was something to be learned here.

It became more clear the more I contemplated it. My thoughts began to take shape.

Here’s what I came up with:

**_Simple strategies trump rigid processes_**

There wasn’t one magical solution that helped me find my way. I didn’t set out thinking, “I will walk 50 meters, pull out my compass, shoot a 178-degree bearing, put the compass in my left pocket, take a sip of water, continue 43 meters…” I knew I’d be prepared no matter what happened because I had a set of straightforward principles I could rely on. Any complicated process would have been too costly to use out there when it mattered.

**_Most soldiers found their way, but took different paths._**

There were dozens and dozens of soldiers wandering the forest that night. None of us had the same combination of way-points, but the objective was the same: find all the points. How we got there was irrelevant. None of us had the same route. Each solider took the path that made the most sense given their starting point and their unique set of constraints and conditions. I’m sure some learned the hard way, but we were better for it in the long run. We could share the lessons we learned. The best solution is tailored to the surrounding circumstance.

**_Start with a basic plan, and anticipate it will change._**

My plan fell apart umpteen times. I anticipated it would, and that made it easier to adapt. A plan is a starting point. I would have failed and run out of time if I had spent too much effort devising the “perfect plan.” It was important to just start moving.

**_You don’t need fancy tools._**

Would it have been easier if I had a GPS and four-wheeler? Definitely. Was the compass, flashlight, map, and “know how” enough to get the job done? It was. I was able to hone my skills because I was forced to rely on simple strategies and basic tools. I became a better navigator because of it. Better tools would have made me more efficient, but they also would represent new complexities and points of failure — points of failure I likely wouldn’t have been able to overcome without a deeper understanding of terrain, map-reading, pace counts, etc. Tools can supplement understanding, but are not a replacement for it.

**_Focus can override discomfort._**

My discomfort diminished as the night wore on. I barely noticed the heat, weather, or exhaustion. I became so focused on my task that I couldn’t be bothered to be distracted by anything else. Similarly, teams can withstand a lot if they’re focused on a clear goal — everything else (the disagreements, lack of resources, etc.) take a backseat.

***
<br>

Do I think we need managers (in the traditional sense)? Nah. Do I think we need a process, or set of processes, that can be applied universally? Probably not; I believe there’s a balance, and that each small team can decide what works best for them and their unique context. What about development tools? I think we can get by with something lightweight, and build from there.

This is just my position. Our team is still wrestling with this. We haven’t arrived to a decision. Overall, I’m thankful I work with people who care enough to have a stance, and I’m confident everything will work out. If someone like me can find a one-meter-tall stake in the ground. In a jungle. At night. In the rain. With just a compass, map, and a few basic strategies. Then I’m sure we can figure things out.

Related Reading: [The Right Way To Ship Software](http://firstround.com/review/the-right-way-to-ship-software/)


**_Let’s get more people involved in tech. Support veterans learning to code by checking out [Operation Code](https://www.operationcode.org), and help “increase the number of women of color in the digital space” by supporting [Black Girls Code](http://www.blackgirlscode.com). Follow me on [Twitter](https://twitter.com/BaxterMante)._**

_Originally posted on [Medium](https://medium.com/operation-code/what-one-dark-night-with-the-army-taught-me-about-shipping-software-1879683685e7#.efhxkfoux) by **Baxter Mante** (Not a cat. Co-Founder at Macaroon. Nerdery. Physics. Design. Software. Tech. Ramen.)_