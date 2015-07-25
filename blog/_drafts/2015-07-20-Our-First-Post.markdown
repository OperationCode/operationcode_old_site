---
layout: post
title:  "Operation Code 1st Post"
date:   2015-07-20 21:05:58
categories: jekyll update
---
Here's a quick post I made by adding a file to the `/blog/_drafts` folder. Once the post is ready to publish you can move it to `/blog/_posts` and then rebuild the the Jekyll site to update and show the new post.

Find more info here: http://jekyllrb.com/docs/home/

To do:
- big-picture (bolted on, separate system living inside rails app), start up (local vs production), navigating (hard-coded links), writing posts, saving (where), reloading (local vs production)
- modify main README.md 'Contributing' paragraph with info and link to BLOG_POSTING_GUIDE.md  
- BLOG_POSTING_GUIDE.md (Jekyll noob guide)  
  - how to create post w/ frontmatter from draft template  
  - placing in drafts vs posts  
  - rebuilding blog  
    - local = `thin start --ssl`, need to restart server to rebuild site with changes  
    - production = ??? look for Jekyyl (`jekyll serve`?) command and run in heroku via CLI?  

Done:
- Main OpCode NAV BAR: add a "Blog" link to pointing to `/blog`
- move cookie-cutter "about" page to "drafts" for reference. Can delete if wanted.
- BLOG: add a "Home" link to the site root url so people can get back to main OpCode site and out of the blog  
- make template post in drafts that spells out "how to"  

Future group tasks:
- consider adding new theme
- add some posts!
