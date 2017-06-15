---
title:  Tools For Pair Programming
date:   2016-10-18
tags: Article
author: Jon Deng
layout: post
---
> “Why does this method keep returning undefined- it’s not supposed to do that!” I said one day, frustrated.

> “What assumptions are you making that lead to this method returning a value other than undefined?” my pair asked.

> “Umm…because the function that calls the method is supposed to pass it an array, which it should get from the API call, which, umm… if it doesn’t return any data…”

Bugs are caused by difference between a programmer’s *expectation* of what the computer will do and the *reality *of what the computer actually does, based of course, on instructions from the programmer. The difference between expectation and reality is usually due to incorrect assumptions.

A good pair programming partner can expose assumptions that you were not even aware of because they force you to reason out loud, laying all your previously assumptions out, either verbally or written out on the whiteboard.

[With enough eyes all bugs are shallow](https://www.wikiwand.com/en/Linus's_Law), mostly because if you have to defend your assumptions to another person, you’ll usually catch the incorrect ones.

I’d like to share what I learned about *effective pair programming *my first six weeks at Hack Reactor, including how to make sure both you and your pair get value out of the practice and how to deliver a good product at the end of the day.

Hack Reactor is a very high touch game. For the first six weeks, all your coding sprints are completed through pair programming, where two engineers work on the same code, sometimes even by looking at the same monitor.

One engineer “drives”, which means they input all the code into the computer. The other engineer “navigates”, which means they don’t write any code. That frees them up to do other tasks like looking up documentation, or reviewing the coding being written for possible errors.

Pair programming is useful not only because it makes it easier to find bugs, but also because it creates a system of continuous feedback, one of the main tenets of [Extreme Programming](https://www.wikiwand.com/en/Extreme_programming). Because another engineer is always reviewing, the engineer in the driver’s seat has to write their code in logical ways. If they do something convoluted, they’ll be sure to get questions from their pair. Additionally, the engineer navigating has to justify their design decisions in real time such as, for example, to introduce some technical debt into the project in order to ship faster.

[Because humans are social creatures who work best when accountable to others](https://medium.com/@JonDeng/veteran-imposter-syndrome-5cfc1465b014#.p8mqlxukf), pair programming, even though it is time expensive (it takes two engineers instead of one), can produce a higher quality end product. Additionally, and more importantly, both engineers walk away from the experience knowing a little bit more. Perhaps one of the engineers was a database ninja, but weak on the front-end, and she walked away with more comfort in JavaScript front-end frameworks. And maybe the other engineer was inefficiently doing a lot of manual tasks that his pair showed him how to automate away using cron jobs and a task runner like Gulp.

In this [Software Engineering Daily podcast](https://www.wikiwand.com/en/Extreme_programming), Fred George, the creator of Developer Anarchy, states that pair programming is useful because it allows all everyone on the team to learn from each other and become full stack engineers, instead of getting silo’d into specialties. Full stack engineers are more useful to the organization, not only because they can work in any part of the technology stack, but also while doing so they can pair with others, minting more full stack engineers.

As a self-taught programmer, pair programming was initially a challenge for me because it forced me to clear the rubbish out of my thoughts, and express both my plans and assumptions in clear, understandable ways. But as I did it more, I think I got better at it, and I’d like to help you speed up your journey with some useful lessons that I picked up.

And if you’re also a self-taught programmer, let me try to convince you that pair programming is the best way to improve your skills, whether you’re working with somebody more senior or junior to you. If you’re stuck far from a city with other developers, you can even pair program online, through programs like [FreeCodeCamp](https://www.quora.com/Is-pair-programming-a-part-of-the-program-requirements-for-Free-Code-Camp) and applications like [codeshare.io](https://codeshare.io/).

**The lessons are:**

1.  **No feigned surprise**
2.  **Yes, and**
3.  **Know when to step away from the computer.**

### No feigned surprise

I got this rule from the user manual of the [Recurse Center,](https://www.recurse.com/manual) a programming retreat in New York City. I think it’s easier to demonstrate this rule than to explain it, with a hypothetical conversation between two developers:

> Abel: So, I have this funny problem with transferring state from our Redux store to our React components…

> Beryl: Oh, no problem. You just use the react-redux library and make a Provider component that connects the state between the store and components.

> Abel: Umm, what’s a Provider?

> Beryl: What do you mean, what’s a Provider? Haven’t you been a developer for like 5 years?!

Obviously, not a useful response.

Does it feel good to admit that you don’t know something, which is an act of courage and honesty, and then for them to reply: *what are you, some kind of dummy?*

The truth is there is a large universe of things to know as a developer ([one that’s growing exponentially in languages like JavaScript](https://hackernoon.com/how-it-feels-to-learn-javascript-in-2016-d3a717dd577f#.dzcodaf12)) and you can’t possibly know everything. Even senior developers, because things are changing so fast, might not know something a junior is an expert in.

Feigning surprise in our hypothetical example created a missed opportunity for Abel to learn more about React and Redux, and for Beryl to achieve mastery of the subject by teaching Abel.

### Yes, and

I recently spent a Saturday night watching an [Upright Citizens Brigade](https://www.ucbtheatre.com/) show, and what fascinated me was that even though no explicit instructions were exchanged, both improv comics seamlessly kept the pacing of the show on point. In improv comedy, the goal is for both comics, neither of whom have a script, to explore the situation they find themselves in, adding details to the scene and slowly building up to more and more absurd circumstances (*Who brought fake blood to the wedding dress store and why was a banana peel conveniently left in the aisle?*) until the hilarious finale. But, it’s not funny if the situation is ridiculous right away;[ you want to take the slow train to crazy town.](http://www.newyorker.com/magazine/2016/09/05/upright-citizens-brigades-comedy-empire)

Same goes for building software on a short deadline. You want to fit as many features in as possible. But you can’t build a killer app in one step. You have to create the user story, whiteboard the idea, wireframe it, build an MVP. You want the slooooow train to crazy town.

When working on a project with a partner it will almost always be the case that there will be reasonable disagreements. Instead of immediately advocating for your side, it can be useful to accept your partner’s position as true, and to riff off of that. This “acceptive brainstorming” often leads to better ideas than if each side had already made up their mind.

This is the essence of the [Yes, and rule](https://www.wikiwand.com/en/Yes,_and...), which means you never directly disagree with your partner at first, but instead continue the brainstorming while accepting their assertion on the face. I find I often learn more by exploring and often times accepting my partner’s plan rather than blindly advocating for my own.

For example:

> Abel: I think we should use a graph database here.

> Beryl: (trying not to roll her eyes, because her initial thought is that this is the stupidest idea ever) Hmmm. Interesting, why do you think so?

> Abel: Well, with a relational database we could store all the users pretty well, but it would be expensive to map all the relationships between them- a graph database would be better.

> Beryl: Wait, we’re storing relationships between users?

> Abel: Well, if we did, we could do a lot of really cool machine learning stuff to optimize the experience.

> Beryl: (excited about the idea now) Oh, like we could optimize everyone’s landing page to show updates from people in their network! That would be sick.

### Know when to step away

I learned in the Army that being angry and tired is not a good reason to not get the job done. But I also learned that it’s illogical to keep pounding your head on something in a counterproductive way.

    Now is better than never.
    Although never is often better than *right* now. 

Yes, you have a deadline. Yes, programming is not always fun. Sometimes you’re tired, and have a headache and a mental block. You may be tempted to lash out at your partner, because its convenient.

But you can take a 5 minute break, go walk outside, call a friend to vent, run laps around the building. Working together doesn’t mean that you’re tied together, and sometimes you need a timeout. If you’re ever tempted to say something snarky, or find you don’t have the energy to uphold the two rules above (No feigned surprise and Yes, and) you need to take a break.

It will help you think.

And you will also avoid saying something you can’t take back.

If you can’t be a good person, step away from the computer for awhile. There’s a whole world outside, and it’s good to keep that in perspective.

### Conclusion

That’s it.

1.  No feigned surprise
2.  Yes, and,
3.  Take breaks as you need them.

Oh, and try to learn as much as you can from your partner, and teach them as much as you know. The rest you can pick up as you go along 😜.

_If you’re interested in learning JavaScript web development along with me, follow me on [Twitter](https://twitter.com/jondeng) and [Medium](https://medium.com/@JonDeng)!_

_Originally posted on [Medium](https://medium.com/operation-code/tools-for-pair-programming-dd7a734d7b96#.2x8r91nep) by **Jon Deng**, Web Worker. Currently [@Snap](http://twitter.com/Snap). Formerly [@USArmy](http://twitter.com/USArmy) and [@HarvardLaw](http://twitter.com/HarvardLaw)._