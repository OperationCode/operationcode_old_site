

#Operation Code Blog Posting Guide
##Sources
[Jekyll Docs](http://jekyllrb.com/docs/home/)  
[Sitepoint tutorial for merging Jekyll into existing Rails app](http://www.sitepoint.com/jekyll-rails/)  
[Github repo of Jekyll embedded into existing Rails app](https://github.com/JesseHerrick/jekyll-on-rails)  

##Big Picture
[Jekyll](http://jekyllrb.com/) is a "simple, blog-aware, static site generator" made with ruby. In essence, Jekyll is it's own system. We've embedded Jekyll into our existing Rails app.  
While the operation of Jekyll is fairly easy, please keep in mind that this "embedded system inside an app" has a few outcomes:  

- Jekyll is not controlled by any Rails MVC pattern  
> Example: there is no `blog` model, nor `post` views  

- Standard Rails helpers such as `link_to` may not recognize Jekyll pages and may need to be hard-coded (full URL written out)  
>Example: the `Blog` link on the Nav Bar had to be hard-coded as `<li><%= link_to "Blog", "https://operationcode.org/blog" %></li>`  

##Workflow
###Start up (Local Dev)
Because some links have been hard-coded, you will need to manually type in some URLs to access the blog.  
1. Start server `thin start --ssl`  
2. Go to `https://localhost:3000/blog`
3. Click thru SSL options needed. In Chrome:  
	- accept any certificates suggested (MAC OS X)
	- On "Your connection is not private" error page, click in lower right on "Advanced"
	- click "Proceed anyway"

###Navigation (local dev)
Note that the "Back to Operation Code Homepage" link is hard-coded to `https://operationcode.org/`. So if you want to get out of the blog in the local dev environment, you'll have to manually change your url to  `https://localhost:3000`.

###Writing Posts
Writing a post with Jekyll is really easy.
1. Create Post File: Each Jekyll blog post begins life as a separate markdown file. Make a new markdown file in the `/blog/_drafts` directory. Note the file format for each post file is `YYYY-MM-DD-name-of-post`.  FYI, the `_drafts` folder is just a "staging area" for unfinished posts for you to use.
2. Add "Front Matter" YAML: "Front Matter" YAML descriptors must be added to the very top of each post file. See the example above in between the mandatory top & bottom `---` lines.
3. Add Post Body & Content: You can now write your blog post in normal markdown in the newly-created file.
4. Move to `/blog/_posts`: Once the post is ready to publish you can move it to `/blog/_posts`. Jekyll will see any new documents created in this folder and "publish" them when the Jekyll blog is rebuilt (see below)

###Test Publish Your Post Locally
This part is a little non-intuitive if you come from a CMS like Wordpress. But it's really easy. You just need to do two things:
1. move the file to to `/blog/_posts`
2. rebuild the Jekyll blog to publish your new post  

In your local/development environment, you can do a "dry run" publish to see how it looks:
1. move the file to  `/blog/_posts`
2. run `rake jekyll` from CLI
3. check the blog page on `https://localhost:3000/blog`

You'll notice that your blog post has been turned into an actual static HTML page at `/public/blog/`. If you have added any `categories` to your front matter YAML, it will be sub-filed under the appropriate folders for each category. For example, a post with the category of "news" would be filed under `/public/blog/news`.

###Submit Pull Request To Publish On Production Site
Submit a [standard pull request](https://github.com/OperationCode/operationcode/blob/master/CONTRIBUTING.md) with your post already published to a static HTML page. To clarify, this means you accomplished the following:
- added your post markdown file to the `/blog/_posts` folder
- rebuilt the Jekyll blog using `rake jekyll` from the terminal
- checked that Jekyll published your final, static HTML page that will be served out by the web server in `/public/blog/`.

##Current Issues
- running `rake jekyll` re-builds the site fine, but shows `rake aborted! Don't know how to build task 'jekyll'`  
- For now, may need to use images from other hosted sites like Imgur. Haven't figured out how to store/add in Rails app. See "asset pipeline flow" in future tasks below

##Future tasks
- consider adding [asset pipeline flow](http://www.sitepoint.com/jekyll-rails/) for pictures, scripts etc. See "Extra: Using Rails-like Assets".
- consider adding a [new theme](http://drjekyllthemes.github.io/)
- add some posts!

*v1 of this guide created by Chris Kibble*
