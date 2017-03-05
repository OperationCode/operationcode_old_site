---
title:  What are employers looking for in a developer?
date:   2016-10-06
tags: Article
author: Kalob Taulien
layout: post
---
Over the last 2 months I’ve been on numerous interviews. 12 to be exact. And the companies range in size from small and local, to large and national. I won’t list out which companies are using which technologies because it’s not my place to expose that information, but in this post you’ll I’ll highlight the sizes of the companies in relation to the technologies they use, and I’ll include other details like OS preference and infrastructures.

First, let’s establish a few things. I’m a senior full-stack developer, but I prefer back-end work. That didn’t stop companies from reaching out, even if I didn’t apply with them. Second, I let _one_ recruiting agency work with me. I’ll add my experience with that as well. Third, I’m in Alberta, Canada, where there’s significantly less opportunity for developers than places like Toronto, Vancouver, L.A., Houston, N.Y., or any other major area. And lastly, I didn’t go on interviews for positions that wanted me to work remotely. It was in-office, or nothing. Working from home is nice at first, but ultimately it gets very lonely.
<br>
<br>
## About me in relation to the positions
Every position I applied for was back-end development in a hands-on development role. No management roles, and I didn’t exclusively apply for front-end roles, however if they asked me about those positions I made myself available. However almost all companies are looking for experience in areas that will have nothing to do with your actual role; more often than not it’s because they want to see if you can understand another developers role and if you’ll play nice with them.
<br>
<br>
## The Companies
To start, here’s some background on which companies interviewed me. I’ll leave out the smaller company names as a courtesy to them. The two biggest companies were Telus (a Canadian telecom company, one of the 3 biggest) and The City of Edmonton, which isn’t technically a company, but for the sake of this article we’ll classify them as one. There were four medium sized companies, and 6 local companies.

Both Telus and The City of Edmonton wanted full-stack development capabilities. And interestingly enough, the larger companies that wanted full-stack development also wanted the developer to know how to analyze data _and_ present the information in an easy-to-understand manner. They wanted someone to pull a lot of information, display it using a library like D3, Highcharts or the less commonly asked for Google Charts, and make the information so simple to understand that anybody could read it and make sense of it (think Google Analytics, but significantly more simple, like Mixpanel). They were much more data driven than everyone else.
<br>
<br>
## Let’s talk tech
Which technologies were companies looking for the most? Honestly, most of these companies weren’t moving along a trend line. They were just doing what suited them best. That means languages like NodeJS aren’t actually in super high demand among many companies, but they are in demand in the larger businesses like Netflix. None of the smaller, more local, companies wanted NodeJS (that’s not to say that some don’t want it). But this isn’t about NodeJS, it’s about all the technologies.

At the larger companies, here’s what they generally asked for (in no particular order of importance or demand): NodeJS, MongoDB, MySQL, [Splunk](https://www.splunk.com/), [React](https://facebook.github.io/react/), Angular, Express, Apache, NGINX, ASP.NET, Python, PHP, Java and JavaScript. Almost everyone wanted version control via Git [(GitHub)](https://github.com/), and the ability to work with RESTful APIs, too. If you’re familiar with “stacks”, there are 2 very common ones in there: MEAN and LAMP. Two languages that weren’t anywhere to be found throughout this process, though, was Ruby on Rails and Go. It’s like they didn’t even exist.

The MEAN stack is MongoDB, Express, Angular and NodeJS. The LAMP stack is Linux, Apache, MySQL and PHP (or Python).

> I was surprised to find out how many job “requirements” are not actually required at all.

Companies were looking for a huge array of skills, many of them they said all these skills were “requirements” but once I got to the interview these “requirements” weren’t actually part of the job at all. One requirement that was hardly ever said that turned out to be incredibly important was JavaScript (React, Angular, jQuery, jQuery UI). When we talk about JS libraries, more people asked me about jQuery UI than they did about jQuery — it was assumed that jQuery is just something everybody knew already. Like it was HTML. In fact, nobody even asked about HTML5 (which is largely JavaScript based). And CSS — those 3 letters never came out of any mouths.

**Tip**: _The higher paying jobs all wanted Object Orientated Programming (OOP)._

Some positions I was applying for were strictly back-end, yet a clear understanding of how front-end languages and development work was vital. Not because they want back-end developers working on front-end code, but because they want you to have a better understanding of a team dynamic when the team members are working on different things. If a front-end developer says they need access to new information to make a better UI, will you, as a back-end developer, understand their request? Will you understand why a designer wants to make a change to the UI, and why the front-end developer is asking you for a few data changes? It’s not necessarily about team management, but about team patience and understanding, while trying to hit your timelines. A team of developers that is understanding is more efficient. Notice I didn’t say they get along or like each other, I said they are understanding.
<br>
<br>
## Git
Regardless of the position, nearly everybody asked for version control through Git (GitHub). Nobody required a Git wizard, but knowing how to merge, pull and branch were the key ingredients. Even smaller local companies that didn’t need to use Git yet wanted you to have Git.

**Tip**: _If you don’t know Git, you should learn._
<br>
<br>
## APIs
Companies didn’t care too much about which APIs you could work with, but they did care about being able to work with them. As more and more internet technologies becomes open, APIs are becoming more important and being able to work with them is growing more important every year. Nobody really specified _which_ APIs they were looking for, but almost everybody asked “Can you work with RESTful APIs?”. I’ll cover some of the interview questions later in this article.

Only one company asked if I was able to work with Stripe’s API for payment processing. Nobody asked about PayPal.

It should be known that not all APIs are “simple”. Stripe’s API is super easy to get started with. But some APIs are only accessible through HTTP (curl). It’ll help you to know how to make those kinds of requests.

## Open source contributions
The interviews that had 2 or more people asking questions typically wanted to know about any open source contributions. Speaking from a business perspective, it’s actually not important if you contribute or not. But what they are looking for is your ability to work with other people on a single project, how involved you tend to get, and if you can jump into a project and immediately start contributing. If they hire you, they aren’t going to stop production just to train you. Development isn’t just about coding anymore, it’s also about being able to move fast with other people.

If you’re not contributing to an open source project, maybe it’s time to start looking. Size isn’t important, but the mere fact of contributing is helpful in interviews.

**Tip**: _You can always start your own open source project. Why not create your own CMS? WordPress works this way._
<br>
<br>
## Local Development
I was asked a lot about how I do local development. While it’s not often said, local development is important. Only the strictly-web-development companies asked about local development. This ties into version control a little bit, too.

Big players like Hootsuite (who I spoke to) will want you to do local development, commit to Git, and repeat until pushing your work to a staging and/or production site. It was actually Hootsuite who very directly asked if I had experience with [Vagrant](https://www.vagrantup.com/), but there were a couple other people who had nonchalantly talked about Vagrant as if everyone else is already using it as the standard local environment tool.

**Tip**: _[Vagrant](https://www.vagrantup.com/) allows you to create local servers inside your laptop/dsktop. It’s a powerful tool that will save you a lot of time when moving local code to live servers. You can SSH (shell) and SFTP into it, too._

**Local Version Control Tip**: _When writing local code you can use Dropbox as your local version control. Just point your Vagrant (or WAMP, or whichever server environment tool you use) to a Dropbox folder. Dropbox comes with version control in case you make mistakes and auto-syncs to their cloud. You can SSH into your Vagrant machine and commit using Git, too._
<br>
<br>
## Infrastructure and OS
Do you code using a Windows laptop, or Mac? It doesn’t matter. As long as you can commit the code and work with others on it.

But when it comes to production (live websites/apps) the standard is Linux. And Linux has several distributions to choose from. This is somewhat of a grey area, but generally speaking most companies asked about Ubuntu and Windows. The Windows OS for production servers surprised me, and how common it was asked for surprised me too, although there was very little mention of Azure. It was typically the older companies that used Windows, and had licenses from Microsoft for certain software requirements (the same companies that had a list of ~40 items of “requirements” that were nearly impossible to obtain unless you already worked for that company, or the licensing company, more on this later).

Other than Ubuntu and Windows servers, when I asked where the servers are hosted, 6 said [Amazon Web Services](https://aws.amazon.com/) (AWS), 1 said [Microsoft Azure](https://azure.microsoft.com/en-us/), 2 have their own server farms they own and maintain, and 3 declined to answer. I’ve been developing with AWS for several years now, so that’s my go-to choice — and from the very small sample size (and the fact that Amazon’s business is really booming from AWS) it’s pretty clear where you should start first.

Nobody exclusively said I needed to know system admin stuff, nor did I need to learn. But as a senior developer I have to say: knowing some command line commands, knowing the more common areas of a virtual OS and being able to modify a file on a remote server comes in very handy!
<br>
<br>
## Libraries and Frameworks
Libraries and frameworks are groups of code using a language to make life easier. jQuery, Angular and React all rely on JavaScript, and make it better. Symfony and Zend for PHP. Django and webpy for Python. The list goes on for ages. There are libraries for just about everything, and as you build applications you’ll start making your own. So which libraries and frameworks was I asked most about? React. React again. Angular. And then React. Remember, all the positions I applied for were back-end. But that didn’t stop them from asking about React and Angular. Third on the list would be jQuery UI, followed by Bootstrap, then several graphing charts (D3, Highcharts, Google, etc.). When it came down to back-end libraries or frameworks, it was always “adapt to our way of life”, which isn’t the wrong approach, honestly. But each company had their own way of doing things with a specific language. I went for a PHP interview, they asked about Java. I went for a Java interview, they asked about Python. Numerous places asked about .NET (mostly out of confusiong about what .NET does, it seemed. Example on .NET confusion later).

Within each language is a framework a company will stick with. Zend is common for PHP. Webypy for Python. Does that mean there’s a more common framework that companies tend to lean towards? Nope. There’s hardly any rhyme or reason other than “that’s what we started with; that’s what we’ll use for the rest of time”. So as a developer, is it realistic for you to learn _every_ framework in several languages? Absolutely not.

Frameworks and libraries will always work against you. If you write React, they’ll want Angular. If you write jQuery, they’ll want React. If you use one library, they’ll want another. This friction worked against me in almost all my interviews. I’m well versed in the world of web and yet it struck me as strange that they somehow wanted all my weaknesses, and quickly brushed passed my qualifications. I don’t think this is a conspiracy, but I certainly think many companies are looking for too much from a single person. Again, I have _a lot_ of experience in various roles in startups and full companies — yet they wanted an unrealistic amount of experience for the pay they were offering. Offering $26/hour on a 6 month contract to manage 20+ people and 30+ technologies is hardly worth the headache.

**Tip**: _If you have experience with a language but not with the framework a company is asking for, openly tell them, then go home and your homework. If you can, present what you’ve learned in a short period of time to the interviewers (you probably have their email addresses) and use that as leverage to prove to them that you are the right person for the job._
<br>
<br>
## Specialized or Licensed Programs
The best opportunities I found (highest pay, in this case) worked with specialized programs. They didn’t make them in house, they licensed them from players like Oracle and Microsoft. You’ll _never_ know what they use until you ask. Sometimes you can find information on sites like Reddit or Quora from old employees, but most of the time you’re walking into the room blindfolded. And if you don’t have experience with their exclusive programs or systems, tell them that, and then sell yourself on how fast can you learn, and what similar or related experience you have. How can you get as close to a “Yes, I know that” can you get without lying?

I made it as far as the very last round in an interview process where this was the deciding factory. I always ask, “If I don’t get the position, no hard feelings, but can you provide feedback so I can improve?” (word for word). And guess what? I didn’t get the position because someone else had experience with the software they wanted to use (3rd party data housing software). As a developer, I thought it was weird since all my other experience clearly made up for this, and the fact that the software they wanted to use required you to write your own library to access the data anyway. What I could bring to the table was perfect for their organization. But in the end, it didn’t matter.

> A moment of clarity made me realize that most companies don’t want you for you can provide, they want you for an exact position, no questions asked.

To me, this was backwards. I come from a startup background, where if someone has the personal skills (desire to learn, leadership, communication skills, etc.) you can teach them the technical skills, especially if they already have most of the talent you require but are just a small leap away from being that perfect employee. Established companies seemingly don’t want this (that’s not to say all companies are like this!). It was at this point I started looking at local companies — that turned out to be much more fruitful than these large companies that didn’t want to invest in you (they just want to spend a short lifetime looking for one person who may or may not be able to do the job).

Here’s a lesson I learned: bigger companies want specialization, smaller companies want well-rounded people. This rule doesn’t apply everywhere, but it’s holds true quite often. Perhaps this will help you get your first job as a developer — look locally (doesn’t have to be your city to be a small business).
<br>
<br>
## Agile Software Development
You can be the best coder in the world, but many places won’t look at you twice if you don’t know what Agile Development is.

[Here’s a Wiki page](https://en.wikipedia.org/wiki/Agile_software_development) to get you started on the wide world of Agile.

Every single company that mentioned Agile mentioned [Scrum](https://en.wikipedia.org/wiki/Scrum_%28software_development%29). This article isn’t meant to teach you about either of those, but if you go into an interview and they talk about Agile and Scrum development, you should know what they’re talking about and be able to participate in that part of the conversation.

Companies use this term (Agile) to make themselves feel modern and relevant, and to seem hip, updated and efficient. But the truth is they do a lot of talking. They don’t actually follow all the rules of an Agile framework. But they want to believe they do. So if you know about Agile Development and can contribute to their vision of perfectly controlled processes, that will certainly help you in an interview. Remember, you’ll be paid to code but your future depends on the future of the company and it’s leadership.
<br>
<br>
## Things Nobody Cared For
Hot topic here! If you need to know everything, there can’t be anything people aren’t looking for, right? Wrong. Here are some of the more common elements to a great web service/app that nobody mentioned, and when I mentioned these they were quickly dismissed. (Take this lightly, this does not apply to all companies!)

**Docker**
<br>
While docker is useful, generally speaking, most companies didn’t care for it. 

**Cloud**
<br>
Unless it was a static file on a CDN (Content Delivery Network; ie. How you can use Boostraps libraries without hosting the file), hardly anybody cared. Even scaling servers up and down — no interest. 

**Ruby on Rails**
<br>
Nobody cared about poor old Ruby.

**jQuery**
<br>
Nobody explicitly said they wanted jQuery. It was assumed you had it, like how it’s assumed you know Hypertext Markup. Knowing jQuery was not a point in my favour, even though it was needed in all projects.

**Growth**
<br>
Both corporate and personal growth; everybody wanted me because I could code. They also wanted me to have leadership skills, but didn’t want me to use them to grow their team members. They cared about me growing my development skills as long as it favored them, but nothing beyond that (that’s good and bad). 

**Go**
<br>
Like Ruby and Docker, nobody wanted it. 

**Experience**
<br>
The bigger companies didn’t care that I’ve been in this game for almost two full decades now. They didn’t care about other accomplishments. They asked about open source contributions, but these are for-profit companies paying for your time, they usually don’t care about outside of work contributions (unless they are trying to build a positive corporate culture).

**Analytics/Data**
<br>
Unless their product was data-centric, they didn’t care about optimizing conversion rates. They had a project in mind, and it was going to be built their way or no way (and in one case the company closed the position entirely).

I don’t want this section to sound negative, but it’s important that it highlights the fact that you will be hired for a very specific role. If you have an ounce of entrepreneurship in your blood, they will want to see it in the interview, but don’t be offended if they don’t want to see it so much in the work place.
<br>
<br>
## Recruiting Agency
I mentioned at the start of this article that I used a recruiting agency. I chose one and went with it. I figured, “why not multiply my efforts and let someone else job hunt with me, for me?”. The person that worked with me was outstanding, professional and always excited about new opportunities. Through this agency I was setup with 3 of the 12 interviews. Not exactly “doubling my efforts”, but the 3 biggest companies were from this agency. And they paid the most. And they were also the companies with the most unrealistic expectations for the typical developer — from my experience, that’s but one way to filter out people who have very little confidence. And this agency got me through the door of the 3 biggest companies I met with in the last 2 months. And it cost me nothing.

These types of agencies usually make money when they place you in a job, so if you get an offer for $35/hour, they definitely placed you at a higher rate (or receive a finders fee). But if it gets you through the door and gets you the experience you need, why not?

**Tip**: _If you’re looking for interviews, let other people help you._
<br>
<br>
## Job Listings Are Lies
Bold title for a bold claim. Of all the positions I applied for and got interviews for, nearly all of them had a list of “requirements” and “nice to haves”. After looking at each job listing, going for the interview, and re-reading the job listing, it turns out those “nice to haves” are basically nonsense. If you have them, great — try to sell yourself on those points. If you don’t have any of the bullet points in the “nice to have” list, ignore it. Don’t let that hold you back. In a minute I’ll prove to you how insane a job listing can be.

The big one is the “requirements” list. I’ve been developing for a long time and I’ve watched these job listings evolve from realistic, to unrealistic, to insane. Ever see a job listing that says “Must know PHP and .NET?” — yeah, those don’t play well together and come from opposite ends of the web development world. If you have ONE of those, apply. The worst that will happen is you’ll get the interview and find out they want the other language. ¯\_(ツ)_/¯

Here’s the very first job listing that I found in my Inbox this morning. I just picked the first one, I didn’t even pre-read it for this article. And like most job listings, this one is a perfect example.

<figure class="image-container">
    <img src="https://cdn-images-1.medium.com/max/800/1*ZKHBM9LpAwtbYpNLIVSkxA.png" alt="screenshot"/>
</figure>
^ Took that from a screenshot, thus the image. Front-end developer but back-end coder? Oxymoron alert.

The problem isn’t even the conflicting languages they ask for, it’s how long the list can be, or how much experience they want and are willing to pay. Remember, you’re a developer doing a valuable job, your time is worth more than most developers think.

Going back to this same listing, here are the requirements (I hope you can read the screenshot).

<figure class="image-container">
    <img src="https://cdn-images-1.medium.com/max/800/1*_GWvbr7QMGvNVmXWKD_pAQ.png" alt="screenshot"/>
</figure>
<br>
Let’s break this down. A PHP developer needs to know JS, jQuery and WordPress Plugins? Plugins, sure, but JavaScript and PHP don’t communicate, unless they meant to say “Ajax”. You must do responsive design; design as a PHP dev? So they want full-stack, not front-end like they said? Oh look at this, they want 4+ years of experience. Sorry, but you don’t need 4 years of experience to rock WordPress — perhaps more like 2 or 3 solid WordPress based projects. Wait, why is ASP.NET in here? This was in the “requirements” list as “an asset” (optional) for a PHP developer but for the front-end role? This isn’t making any sense at all.

So let me get this straight, they want a WordPress developer (PHP) who writes ASP.NET, doesn’t use WordPresses responsive design but uses Bootstrap instead, with 4+ years of experience, who can optimize code, who does all the front-end and back-end work, who’s considered a front-end developer?

No wonder people lie on their resumes. This job requires nonsense. If I break through all the crud on this listing, this is what it would say:

“We’re looking for a WordPress developer who’s not brand new, and leaves comments in their code. This person might need to work with Joomla or Drupal. Oh, and you need to be reliable.”

But their confusing list of requirements makes people think twice about what developers can do, and so developers go down this road of trying to learn everything. And thus, you never apply.

But this entire listing seemed fictitious. Most likely because they want to seem bigger than they really are (or they don’t know code talk). What this listing is telling you is a complete lie. You would not believe how many of these I’ve seen in the last 60 days. If I wrote a click-bait headline based on these job listings, it would say “Hundreds of job listings are lying to you. All them will blow your mind!”

**Tip**: _Apply for any job that you’re semi-qualified for. Either you will learn the skills for the job, learn from the interview, or you’ll move on to better things._
<br>
<br>
## How I Get Interviews

Getting interviews is like doing sales: it’s a numbers game. You know who to target (based on your skills), you know how to pitch them (resume + cover letter), and then it boils down to reaching as many people as possible. All the interviews I went to were from companies where I didn’t know anybody, so there was no favoritism or nepotism. But I did take a sales approach.

First, I customized my resume. I have about 6 different resumes now. They all get the same information across but they are targeted towards different types of companies. Say a company wanted a front-end developer who can do some Photoshopping on the side — the resume (C.V.) I’d submit would highlight those skills over my back-end skills. The projects and experience in this version of the resume would reflect the same changes — I’m not hiding anything, I’m not lying, but I am tailoring my resume to the job. A front-end position shouldn’t care about system admin skills, and a back-end position should care about the 174 JavaScript libraries I’ve used throughout my life.

Next, write a custom cover letter. If a company gives you the option to upload or send a cover letter, take that opportunity! And don’t be lazy about it — write a solid cover letter that exposes you as a benefit to the company. Do your homework on the company, and tell them why you’d be a great consideration for the position. Keep it short and sweet, but show them you know how to use Google, too.

Doing this, I applied at 24 places and got interviews from 12. Well, 9 were from me and 3 from the recruiting agency. But from observing others, this was obviously a high conversation rate.

On two of the job listings, they asked me to email them my C.V., so naturally, I didn’t. I thought, “that’s boring, just for fun let’s try something different”. So I wrote a totally quirky email, made a Star Wars joke… I didn’t even use perfect punctuation. But it did reflect my personality quite well. And it got me through the door. In fact, I even admitted I don’t write the languages they do. I’ll admit, the companies did say they like to have fun and like lighthearted people, so I was fun and lighthearted. Again, a tailored approach.

My advice on getting the interview for a developer position is to tailor your first impression (cover letters, email, resumes, etc.). And apply like crazy. It’s a numbers game. Each interview you do you’ll learn a lot about what companies are looking for, and that’ll prep you for the next one. You’ll even stop getting anxious and think “Another interview? I’ll pump this out and get a snack after.” And you should know that you won’t fit in everywhere, and they won’t fit with you every time, either.
<br>
<br>
## Culture
Jobs are nice, they pay the bills, but money doesn’t motivate you or make you feel fulfilled. That’s where corporate culture comes in. Do they treat you well, are you growing as an individual, do they want the best for you? If you have numerous job offers, weigh the benefits of each place. Maybe one place pays $60k/year, but is hardly rewarding, meanwhile another place offers you $45k/year but has health benefits, Friday nacho nights, and friendly people. Money is nice, but if you come home stressed (the unhealthy kind) it might not be worth it.

Development takes a toll on you over time. You need to know that there is no development if there is no developer.
<br>
<br>
## Questions I Was Asked
Here are some of the questions I was asked. Many of these are scenario based because the company wants to know how you would handle a certain situation, given your experience. Many times there is no right or wrong answer, they just want to predict your behavior ahead of time.

**Have you worked in a team of 20 or more developers in one place?**
Nope, not all in the same building at least. Remotely I have, and I’ve lead teams of nearly 2 dozen remotely. So while I don’t have the in-person experience, I have the experience of dealing with something I would consider to be more difficult: time zones and communication barriers.

**Tip**: _Notice how I got as close to the right answer as I could without lying? I didn’t even “bend the truth”, but I took the next closest experience I had and sold that._

**If a customer wants a new feature at the very last minute, but there’s no more budget or time, what do you do?**
This depends on the relationship with the customer. Some people are a little more hot headed than others, so that needs to be taken into account. But I would handle the situation by…… {insert your answer}

**You have a user who selects numerous options and wants the data returned in a easy to understand manner, what technologies would you use and how would you execute the code?**
I’d use a JavaScript front end to put some of the load onto the user so the server can use it’s resources on other actions. The form would Ajax data to the server using the POST method, the server would collect, validate and sanitize the users input, the database would collect the data, and return all the data in a JSON format. Either JavaScript can parse through it all, or the server can choose to return the already aggregated data. JavaScript would then put the information into a graph. This entire feature would act like an SPA (Single Page Application) so the user knows what’s happening and thus will stay on the site longer.

**It’s Friday afternoon, everyone else has left for the weekend early, you only have 45 minutes left and the next major task will take at least an hour. You aren’t allowed overtime, do you go home early?**
No. I take the 45 minutes to prepare and plan my workload for Monday morning so I can hit the ground running instead of trying to figure out where I left off.

***
<br>

Those are answers that typically get good responses. Just a few sentences on each answer, make it direct but friendly (don’t sound like an email, but be somewhat educational and informative). There are more questions below, but I won’t leave my answer — they are from my interviewers to you.

**You finish a week long sprint and you’re presenting the final code to your project manager, but he doesn’t understand everything you’re saying, he doesn’t understand the intricacies of coding. What do you do?**

**The customer is saying “you didn’t do anything in a month!” but you actually built the entire back-end and he couldn’t see it. What would you say to this customer?**

**Can you explain the difference between MySQL and MongoDB?**

**Do you know what a CSV is? How is it different from a TSV?**

**You’re working on 3 major projects at one time. You send the finished work of the first project to the UI team and want to start working on the second project. But the UI team comes back with a request for more details from the third project. What the UI team wants will cut into your deadline for the second project, how do you handle this?**

**Tell me why you’d use React over a library like jQuery.**

**Can you tell me the difference between jQuery and React?**

**What’s your favorite programming language, and why?**

**Do you work on open source projects? Why or why not?**

**What do you do outside of work?** (I code for fun, which felt like the wrong answer but it was true)

**What is a front-end language, and how is it different from a back-end language?**

**You’re making a single page application with whichever JS library you chose, it sends constant requests to the server on every action, how should the server format the data before returning it?** (ie. JSON, text, html)

**Is NodeJS multi-threaded?**

**Why is NodeJS more scalable than, say, PHP?**

**You’re given a task to build a website for a customer. It has to be responsive. All they want is a blog and a way for readers to subscribe. Do you build something from scratch, or do you give them WordPress with a plugin you like? Why did you choose that option?**

**Do you know what a RESTful API is?**

**What is your salary expectation?** 
Note: I find this question to be a trap. If you say a number that’s too high they won’t hire you, if you say too low they won’t value you, if you give a wide range they think you have no idea what you’re worth. My answer on this varies on the position and responsibilities. But ultimately my initial answer sounds a lot like this, “I’d love to talk economics with you, but let’s figure out if I’d be a good fit in your business first. If we conclude that I would be beneficial to {company_name}, then we should talk about wage/salary.” If after this like you and want to hire you, you have more leverage with your salary and you’ll be judged far less than. It also shows them you aren’t applying purely for the money. Those types of employees are expensive.

**Do you have any side projects? If so, have any of them gotten any real attention/traction?**

**Say you have 3 tables: users, settings and pages_viewed. Some users turn off the “track my page views” setting. You want to get the total number of pages viewed by each user who has the setting turned on, in the last 4 days, grouped by the unique user and the page they viewed. What would your query look like?**

Then there were several questions based on terminology. Do you know what Agile means, do you know what aggregation is, do you know what OOP means?

## What exactly are employers looking for?
In two single word answers: everything, or flexibility. There are some employers who want everything and that’s not reasonable. Ignore them, they are hard to please and waste too much of your time. Then there are the rest of them who ultimately want flexibility. You need to be flexible in the way you work with others, how you code and which language you code in (look for similarities). To extend the answer of flexibility just a little bit, employers are also looking for reliability and commitment. It’s crazy how many people are unreliable in modern business, and how many don’t want to commit to very much. But hiring and training people is an expensive process for companies, so before they decide to chose you over someone else, they need to feel like you’ll be there for them, that they are making the right choice, and that once you’re in you’ll be flexible enough to make things work. If you were in their position, wouldn’t you want the same thing?

If you’re applying for a front-end position, you’ll probably be looking for a company that has 15–50 developers and focuses on web development (or apps). Any smaller and your risk applying for a front-end position at a company there everybody does everything. The same rule applies to back-end positions. If you do full-stack development, you can go anywhere that doesn’t need specialization in one particular area. But if you’re ultimate goal is to make a lot of money, specialization is what you’ll want.

One thing I always do, which has worked for me for years, is to apply humility into my work and interviews. Don’t get me wrong, I’m good at what I do. But am I the best? Absolutely not. Not even close. I’m always willing to learn more, and make sure that’s known. Even in areas of expertise, if I can learn more from someone else, I’ll take that opportunity!

**Tip**: _When applying for a position, don’t get attached to it. Apply at several other places. Never place a bet on someone you don’t know. If you don’t hear back but see another job posting, apply again. Be persistent._

## Interview Tips
Once you get to the interview, you’ll want to rock their socks, or you’ll want to learn. Those are your two objectives: do well and learn lots. With a little emotional intelligence you can figure out which answers you gave did well and which ones didn’t. Here are some tips on what worked well for me once I get into the interviewing room:

* Show up on time, be polite, and any small talk should be tech talk.

* Always go into an interview knowing about the company. Google is your best friend.

* Show some humility. You aren’t Stephen Hawking; admitting you don’t know everything is not the weakness it was 20 years ago. Just be willing to learn what you don’t know and make it known you’re willing to learn.

* Share your experiences and projects. Don’t brag, but sharing as if you’re among friends is fine. Try to keep your stories and projects relevant to the questions asked.

* Take a moment to think about your answers before speaking. What seems like a lifetime in your head is usually only 2 or 3 seconds. Nobody minds the 2 second delay before a good answer.

Let them know you’re not just a person with glasses behind a computer — you’re a social human being who knows how to talk just like everybody else. Those adorably awkward developers are fun on TV, hard to work with in real life.

* If you’re confident enough, you can ask for feedback if you don’t get the position. Everyone says they will give you feedback, but only about half of the companies I spoke with did.

* If you’re in an interview and you feel like you’re in over your head, find the smartest and chattiest person in the room and ask that person “If I had to learn one thing tonight for this job, what would that one thing be?”

* Your goal for every interview is this: information. The more you know about what this company wants, the clearer your direction will be. If they want an Angular dev and you write Angular, talk Angular. If you don’t write Angular… then you have a better idea of what you need to learn immediately to keep making progress. If 2/3 jobs want React, learn React. Nothing will guide you better than this. No amount of Googling, no amount of reading about trends will guide you like a potential employer or two telling you what they need. At the end of the day, they are hiring you to solve their problems.

## Where bootcamps go wrong
Bootcamps are a fantastic idea! But they forget one very important aspect of life: not all economies are made equal. If they teach you the MEAN stack, that doesn’t necessarily translate into you getting a job working with the MEAN stack. If you live in a concrete jungle, that may not apply to you. But for everyone else who doesn’t live in LA, NYC or Toronto, you should consider looking at job listings online first. See what they want, cut through their crap, and find a pattern. If 3 companies prefer React over Angular, you’ll increase your probability of employment by learning React. Maybe where you live there are mostly WordPress sites: learn WordPress. Master it! Don’t throw away your bootcamp training, it’s probably taught you the fundamentals of programming you need to learn any other language on the web. But also know that flexibility is key to success. Can you adapt when you need to?

## Questions from the group
There were some great questions that were pointed out, and I think this is a great place to put these questions. Everyone will stay anonymous in this section.

**Where am I located and what’s the market like?** 
This experiment was in Edmonton, Canada. Population about 850,000. I would say there are more developers than needed here so companies can be a bit more selective. But that said, there’s not a huge industry for web development here, either.

**Did your age have any affect?**
I think so. Going to interviews a few years ago I looked very young and I think that made some companies turn away. This time I went in purposely looking my age, and only wore a tie once. But this is hard to measure since I have different practices now vs. back then. There is a general distaste for older developers (age 40+) for some reason, although the older devs I’ve met make me look like a rookie. And most “normal” (non-Google or Facebook) companies look for people with life and live server production experience, so they don’t want people that are too young. Experience translates to trust for a lot of people.

**Do you recommend any books?**
I’ve bought a number of books, they didn’t teach me a single thing. My best advice: head to a bookstore, pick up a thick coding book, look at the chapter titles and if there’s one that you don’t understand, Google it. There’s nothing in the typical coding book that you can’t learn from a quick Google and Stackoverflow.

**Discrimination?**
Where I’m from, my background, even my lack of formal education and interests have hardly been a hindrance. I’m also not the most articulate speaking person, either. Outside of my C.V., I’m pretty average. I watch Game of Thrones and Halt and Catch Fire, just like everyone else. I didn’t even have friends pulling strings to get interviews or anything like that.

**Will employers hire freelancers?**
You bet they will! Freelancing means you’ve most likely done a lot of work in a lot of areas, giving you unique experience in several scenarios. There are some people that won’t hire freelancers, but they are few and far between. Chances are they got sour because they worked with a freelancer who “knew everything and could never be wrong”. Don’t be that person and you’ll be fine.

## Overview
My objective for an article like this is to shed some light for the upcoming developers who are trying to get jobs. There’s a lot of potential coming through the pipeline every day and I see a lot of people facing disappointment because they feel like they are unemployable. That shouldn’t be the case. The facts are: there are jobs out there for developers, you are employable, and the general global economy is in the gutter at the moment. The opportunities are there, they’re just harder to get.

I have a pretty solid solution for those that can’t manage to find a job in web development. It does require more work than a 9–5 job but you’ll gain experience that a job just can’t teach you. If that’s something you want to hear about, reach out to me somehow: make some noise on Twitter or message me on Facebook, and if there’s enough interest in that I’ll write another (hopefully) helpful article!

BIG thanks to all the companies that interviewed me. It was fun!

That’s it for this article! Let me know what you think in the comments below or Tweet at me. If you liked what was in here, please share it with your fellow developers in those awesome Facebook groups you’re all apart of! You never know, maybe it’ll help someone else you know.

_Originally posted on [Medium](https://medium.com/operation-code/what-are-employers-looking-for-in-a-developer-95df809a57a4#.nhq96sqvf) by **Kalob Taulient**, CEO & Founder @ Arkmont.com (we’re looking for amazing educators!)_
