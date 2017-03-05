---
title: Learning to Code - The Seven Kerfuffles Of Online Tutorials - Part 1
date:   2016-10-24
tags: Article
author: Krystyna Ewing
layout: post
---
Tutorials are EVERYWHERE on the internet. From training your dog (http://www.nylabone.com/dog-101/training-behaviors/) to making a sweater for your cat (https://www.cuteness.com/article/make-own-warm-sweater-cat) you can learn how to do pretty much anything on the internet. It is a bastion of information, and there are communities of folks willing to help you out if you get stuck, so much if you’re willing to reach out for help.
<br>

I have an issue, and please just bare with me here, here we go : I don’t like coding tutorials. You may hurl your rocks at me when ready, OR you can read through this and hear me out. Either way, just finish reading the dag gum post first.
<br>

### Kerfuffle The First: They’re Created By Tech Experts, Not Teaching Experts

<br>
<figure class="image-container">
    <img src="https://cdn-images-1.medium.com/max/600/1*OMdd_MluGcBfPKPfX5WPDg.jpeg" alt="random code syntax"/>
    <figcaption>I don't even know that this is.</figcaption>
</figure>
<br>

Go through any tutorial, even a beginner level one, and it uses phrase that again BEGINNERS cannot understand. They start throwing out technical terms very quickly and I get it, you gotta learn that stuff eventually right? Why not at the beginning? Start getting used to seeing those terms and reading those terms. Seeing those large words, not knowing what they mean or getting a haphazard and short definition at the beginning can be discouraging. It’s almost as if the people writing these tutorials aren’t trying to curate their content for someone to pick up a new skill, but more so they can say “Hey I’m an expert, look at all this expert knowledge I have, hashes and arrays and abstraction and such”. It’s like if you were to walk into AutoZone and you ask “Hey I’d like to know how to replace my windshield wipers” and the guy teaches you how to replace the engine first.

### Kerfuffle The Second: You’re Not Learning To Code, You’re Learning How To Build That Specific Thing
Some of the courses on sites like [CodeSchool](http://codeschool.com/) and [Code Academy](http://codecademy.com/) have you learn by building clones of sites that already exist, they go through and teach you some of the terms along the way, and generally you are supposed to complete the tutorial having learned some new things. It’s been my experience, again this is just me, that once you complete the tutorial you don’t retain a whole lot of the general knowledge that you are supposed to hold on to. A lot of the time there’s no exact reason why, it becomes more of an association and less like you learned something.
<br>

If you’re met with a similar issue in the future or you need to build a site like the one from your tutorial then Kudos to you. However if you get a project thats not a Twitter clone or a Tumblr clone cutely renamed Trippr, while you’ve learned SOMETHING it’s not practical.

### Kerfuffle The Third: Error? You’re On Your Own Kid
Picture this, you’re going through a Rails Tutorial, and you hit this error:

<br>
<figure class="image-container">
    <img src="https://cdn-images-1.medium.com/max/800/1*qu6eFEwDVsVzJsAgRs6KUQ.png" alt="rails routing error message"/>
    <figcaption>How old is this?</figcaption>
</figure>
<br>

As someone who’s not brand new to coding, I know that this is a routing error, the path “/foo” doesn’t exist and needs to be created by creating the page and going to the routes file in the rails app and setting the route and blah blah blah you get it right? Anyway if I were a beginner it could take between 15 minutes to 3+hours to find a solution sometimes. I’ve hit errors on things that I’ve just had to start over, and I been doing this for a couple years now.
<br>

I know what you’re thinking “well that’s what Google/Stack Overflow/ Stack Exchange is for” have you been to one of those sites? It’s hard navigating or even finding the answer to your question as a professional (I’ve sat and poured over solutions on Stack Overflow with somoeone with over 10 years of experience for hours and STILL have not found the solution to a particular problem it happens ALOT), try being a beginner, and not knowing or understanding how to structure or ask the question that you have. It’s a headache let me tell ya.

### Kerfuffle The Fourth: They Offer Resources, But Often DO NOT Specify Where One Should Look For Guidance
This is an all to common line in a tutorial:

> “This is blank and blank is a little complicated, and if you want to know more about blank, just pick up the book “Learning Blank: A Beginner’s Guide”, We aren’t going to go into too much detail about it here”

First of all, why not go into more detail? Especially if you feel like something isn’t clear enough for you to leave the person doing the tutorial with the mininmal knowledge of the subject. So much so that you’ve sited a usable resource for this person to go learn more about it and increase their understanding of the subject. HOWEVER, why give a resource, if you aren’t going to specify where the information that they need is in the book? Coding books, and trust me I have ALOT of them are not really meant to be read all the way through (unless of course they are tutorials, then you do read them all the way through). Suggesting a resource means NOTHING unless you explain WHERE they need to look, WHAT they are looking for, and WHY they should go over it.

### Kerfuffle The Fifth: These Tutorials Assume A Lot About The Learner, And How They Learn
There’s different types of tutorials, some are videos, others are walkthroughs and there’s some that have a repl (live text input field with it’s own tests curated for the activity. See? I can explain stuff too.) There’s issues with each of these and I’m going to only go over one for each:

**Video:**
<br>

More times than not, if you’re looking up a coding video, it’s one in a series of we’ll say 4. Each video will reference something from the last (they almost always go back over some things) and can get repetitive at times. Because of this, you can find youreself going back through the previous video or if you’re like me, and have the world’s shortest attention span, you fast forward through the babbling or the jokes that have nothing to do with what you’re doing and end up missing something important.

**Walkthrough:**
<br>

I feel like I touched on this before, but let’s go on and expand on what I started in the beginning. Walkthroughs are more or less tailored towards learning by working to solve a specific problem with a specific solution and that’s not how coding works.

**Repl:**
<br>

These are touchy, mostly because they rely on things like cookies and javascript to run the code, and test it against prewritten tests. Any error outside of what the test is written for is often not covered, and you’re pretty much on you’re own after that. Sometimes there’s issues with how the code works, and I’ve even run into issues where if you get a failed test and then enter the correct answer, the test can STILL FAIL. It happens ALOT.
<br>

The person who records the videos assumes that most folks will have patience and sit through 4 videos at 15 minutes each, and remain interested enough to learn something the entire time.
<br>

The curator of the walkthrough, often writes specific instructions and does not account for things like user error or just getting a weird error cause computers are terrible. I get it, you can’t sit there and predict EVERYTHING that’s going to happen but at the same time, there are common errors that occur when dealing with certain codebases. When working in ruby on rails, I can’t recall a time where I’ve NEVER gotten a “NoMethodError” while building an app for one reason or another.
<br>

The repl? Relies on cookies. If you understand how a browser works you know what cookies are, and if you don’t know then I’ll tell ya (we’re all here to learn right?). Cookies are bits of information that get stored in your browser, things like passwords and account names and such. A repl is an internet based interface that takes in code, and runs the tests that are written, so you know if you got it right or wrong or need to fix something. It needs to store your code and run the tests, hence that’s where cookies come in. Often times you need to refresh your browser and run the code again, but a beginning coder might not know that.

### Kerfuffle the Sixth: Computer Setup And Environments

<br>
<figure class="image-container">
    <img src="https://cdn-images-1.medium.com/max/600/1*Cz81AmKO_Xq_Xzhf3trTPQ.jpeg" alt="xzibit meme"/>
    <figcaption>Insert Old School Meme To Prove Point Here</figcaption>
</figure>
<br>

The repl is out of the running when it comes to this. A repl is pretty much the environment. However, what is this your first time coding ever and you don’t have anything set up on your computer? For instance, Javascript requires Node to run the code, and the tests, when you put it on a web page it’s not going to run, it’s going to require a separate file or a link to run on a live page. Javascript will run locally on your computer beacause you have the files there to accomplish it. There are dependancies and packages that break if you’re software is out of date or if you’re using a different version that also has different dependcies. Folks just starting out don’t know what to look for if they need to update Node if they get an error. And Node is a tricky beast to figure out (9 times out of 10 for me though, something in node breaks because I haven’t updated it in a while). Updating is a chore too, you run the risk of breaking things like your data base if it’s created in a different or older version and you just install the new version instead of upgrading the old one (yes there is a difference), and then boom your database doesn’t work anymore (speaking from experience). More times than not you’re again left flapping in the breeze if you get an error that you’re more than likely not going to understand or know what to do to fix it because you’re just starting out, and alot of tutorials, even the ones that walk you through setting up your environment, aren’t very clear about what to do when you encounter common errors.

### Kerfuffle The Seventh: Not Quite A Hobby, Not Quite A Career Choice
You did it! You made Trippr! Now what? Do you go on to build a cloud server? Or do you learn how to build HeadScroll, the hottest newest competitor to Facebook. How do you go about applying your newfound knowledge? Why did you even learn it in the first place? These are all personal questions, however they are logical. Tutorials often give little or no guidance as to what your newfound skill can be applied to once you enter the world of development. Which is anywhere that particular scenario that you just learned about or a similar one happens to occur. Most folks go into it without a clear learning path, they’re just testing the water. For those of us who aren’t just testing the waters, we want this to turn into something more, and you find yourself wanting to expand your knowledge. You do one tutorial to learn more about a thing you found in another tutorial and so on and so fourth until you’ve reached this rabbit hole of information and you’ve got no idea on what to do with it.
<br>

If you’re anything like me, you’re open to learning whatever it is you can about this stuff because you feel like it’ll expand your knoledge base. However we do reach a point where we know everything and nothing at the same time.

### What To Take From This:
In a world where our president is trying to make it easier for folks to snatch up tech jobs cause tech is growing so much it needs more than the handful of folks that have kept it going since the 80’s to handle it, it’s easy to get stuck in the “I need to learn to code, but I’m just not picking it up” loop. Especially when you see that other folks are picking it up at a faster pace than you are. Nine times out of 10, whatever materials you’re using to learn aren’t curated for the kind of learning that you prefer, whether you prefer to be taught or hands on or a little of both. They’re great ways to to get a sort of foundation in it, but not so much to learn how to code. Do you know how you learn how to code? BY CODING!!!

### Learning Resources That Don’t Suck:
* [Codecademy](https://medium.com/@codecademy)
* [Code School](https://medium.com/@codeschool)
* [Free Code Camp](https://medium.com/@FreeCodeCamp)
* [Launch School](https://medium.com/@launchschool)
* [Krystyna Ewing](https://medium.com/@Krystyna789) - Ping me! I’ll help if I can! If not, I can get you to someone who can help!
* [Operation Code](https://medium.com/@operation_code) - For Veterans/Military and their families

### Beginners Books:
These are books that you can read cover to cover and get what you need from them:
* [How To Count: Coding For Mere Mortals](https://www.amazon.com/Count-Programming-Mere-Mortals-Book-ebook/dp/B005DPIKPE)
* [HTML/CSS Design And Build Websites](https://www.amazon.com/HTML-CSS-Design-Build-Websites/dp/1118008189/ref=sr_1_1?s=books&ie=UTF8&qid=1477311367&sr=1-1&keywords=html+css)
* [JavaScript and JQuery: Interactive Front-End Web Development](https://www.amazon.com/JavaScript-JQuery-Interactive-Front-End-Development/dp/1118531647/ref=sr_1_sc_1?s=books&ie=UTF8&qid=1477311424&sr=1-1-spell&keywords=JavasScript+and+JQuery)
* [Practical Object Oriented Design In Ruby](https://www.amazon.com/Practical-Object-Oriented-Design-Ruby-Addison-Wesley/dp/0321721330/ref=sr_1_1?s=books&ie=UTF8&qid=1477311235&sr=1-1&keywords=practical+object-oriented+design+in+ruby)


_Originally posted on [Medium](https://medium.com/operation-code/learning-to-code-the-seven-kerfuffles-of-online-tutorials-eed6ba21f8eb#.yhf53gfrr) by **Krystyna Ewing** - Developer, Comic Artist, Veteran, Member of @operation_code, Dev at @DeployOpCod3 Member of @pprenticeship, co-founder @redeploi_