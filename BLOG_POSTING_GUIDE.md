#Operation Code Blog Posting Guide
##Sources
[Jekyll Docs](http://jekyllrb.com/docs/home/)  
[Tutorial for merging Jekyll into existing Rails app](http://www.nickhammond.com/the-super-simple-way-to-add-a-jekyll-based-blog-in-your-rails-application/)  

##Big Picture
[Jekyll](http://jekyllrb.com/) is a "simple, blog-aware, static site generator" made with Ruby. In essence, Jekyll is it's own system. We've embedded Jekyll into a directory within our Rails app, and all Jekyll blog posts and required HTML/CSS files will be served as static assets in the `public/blog` directory.

While the operation of Jekyll is fairly easy, please keep in mind that this "embedded system inside an app" has a few outcomes:  

- Jekyll is not controlled by any Rails MVC pattern  
> Example: there is no `blog` model, nor `post` views  

- Standard Rails helpers such as `link_to` may not recognize Jekyll pages and may need to be hard-coded (full URL written out)  
>Example: the `Blog` link on the Nav Bar had to be hard-coded as `<li><%= link_to "Blog", "/blog" %></li>`  

##Workflow
###Start up (Local Dev)
1. Navigate to the `/blog` directory
2. Start Jekyll preview server `jekyll --serve`  
2. Go to `https://localhost:4000/blog` to view the current state of the blog

###Writing Posts
Writing a post with Jekyll is really easy.
1. Create Post File: Each Jekyll blog post begins life as a separate markdown file. Make a new markdown file in the `/blog/_drafts` directory. Note the file format for each post file is `YYYY-MM-DD-name-of-post`.  FYI, the `_drafts` folder is just a "staging area" for unfinished posts for you to use.
2. Add "Front Matter" YAML: "Front Matter" YAML descriptors must be added to the very top of each post file. See the example above in between the mandatory top & bottom `---` lines.
3. Add Post Body & Content: You can now write your blog post in normal markdown in the newly-created file.
4. Move to `/blog/_posts`: Once the post is ready to publish you can move it to `/blog/_posts`. Jekyll will see any new documents created in this folder and "publish" them when the Jekyll blog is rebuilt during our CI / deployment process (see below)

###Preview Your Post Locally
This part is a little non-intuitive if you come from a CMS like Wordpress. But it's really easy.

In your local/development environment, you can do a "dry run" publish to preview how your post will look when it eventually is published:
1. move the file to  `/blog/_posts`
2. run `jekyll --serve` from the CLI, if it isn't already running
3. check the blog page on `https://localhost:4000/blog` 

You can now preview what the generated site will look like in your browser locally, as a static HTML page temporarily served in the preview server at `/public/blog/`. If you have added any `categories` to your front matter YAML, it will be sub-filed under the appropriate folders for each category. For example, a post with the category of "news" would be filed under `/public/blog/news`.

###Submit Pull Request To Publish On Production Site
Submit a [standard pull request](https://github.com/OperationCode/operationcode/blob/master/CONTRIBUTING.md) with your post's markdown file added to the `/blog/_posts` folder (and removed from the `/blog/_drafts` folder).  When the PR is merged into `master`, Travis CI will automatically run the Jekyll build script as part of the build process and output all generated Jekyll files to the app `public/blog` directory, where the static files can be served live.

###Note
Contributors should not commit any Jekyll-built blog posts to Git Version Control.  Only the "source" files in `/blog/_posts` should be committed.

##Current Issues
- For now, may need to use images from other hosted sites like Imgur. Haven't figured out how to store/add in Rails app. See "asset pipeline flow" in future tasks below

##Future tasks
- consider adding [asset pipeline flow](http://www.sitepoint.com/jekyll-rails/) for pictures, scripts etc. See "Extra: Using Rails-like Assets".
- consider adding a [new theme](http://drjekyllthemes.github.io/)
- add some posts!

*thanks to [Chris Kibble](https://github.com/ckib16) for creating the initial versions of our Jekyll blog and this guide*