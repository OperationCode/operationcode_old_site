# Contributing to Operation Code

So you want to learn how to program? Contributing to Operation Code is a great place to get started! This document will help you get from zero to deploying code in no time!

## Table Of Contents
1. [Quickstart](#quickstart)
2. [Finding an issue](#finding-an-issue)
3. [Setting up your environment](#setting-up-your-environment)
4. [Working on your issue](#getting-the-code)
5. [Submitting your changes](#submitting-your-changes)
6. [Contributing blog posts](#contributing-blog-posts)
7. [Code Standards](#code-standards)
8. [License](#license)

## Quickstart
1. [Find an issue to work on](#finding-an-issue)
2. [Setup your environment](#setting-up-your-environment)
3. [Submit your pull request](#submitting-your-changes)

## Finding An Issue
Before you get started working you'll need to find something to work on. Operation Code uses Github's built in issue tracker and a listing of all our issues can be found [here](https://github.com/OperationCode/operationcode/issues).

Familiarize yourself with the issue types below and then browse for an issue that you want to work on. Don't be afraid to ask for clarification or help.

Once you've found an issue leave a comment stating you plan on working on the issue. It will be assigned to you and away you go!

### Issue Types
Issue types are managed through labels. These labels help us easily identify and manage issues with different workflows.

#### [bug](https://github.com/OperationCode/operationcode/labels/bug)
bugs are errors in code that produce unintended or unexpected results. In addition to the bug label there could also be a tag indicating what the bug affects. For example [issue#124](https://github.com/OperationCode/operationcode/issues/124) was a bug that affected the testing environment.

#### [feature](https://github.com/OperationCode/operationcode/labels/feature)
features either add new functionality or improve existing functionality

#### [discussion](https://github.com/OperationCode/operationcode/labels/discussion)
discussions will generally not have very specific actionable items in them and can be used to plan and design a feature.

#### [milestones](https://github.com/OperationCode/operationcode/milestones)
Milestones are used as containers for new issues pertaining to a project, time frame or feature.

#### [beginner-friendly](https://github.com/OperationCode/operationcode/labels/beginner%20friendly)
These items are hand picked as being great candidates for your first issue to work on.

## Setting Up Your Environment
In order to work on the Operation Code site you'll need to install a few things. Beginner's Note: If you dont have Ruby and Rails installed in your system, dont worry about it. They will get installed during the bundle command, after you clone the repo, along with all the other dependencies.  

### Ruby
Ruby is an Object Oriented programming language Operation Code is written in. While you can install ruby directly to your machine it's highly recommended to use a version manager.

* [Install rvm](https://rvm.io/rvm/install)
* Look [here](https://raw.githubusercontent.com/OperationCode/operationcode/master/.ruby-version) to find the version of ruby we're using
* Install the version of ruby from the step above. eg `rvm install 2.2.3`

### git
Git is a distributed version control system. This is how our code is stored and managed. Git can be frustrating. If you want to know more about git, a great resource is [Think Like a Git](http://think-like-a-git.net/) and if you find your self in a real git pickle, see ["Oh, shit, git!"](http://ohshitgit.com/).

* [Install git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

### PostgreSQL
PostgreSQL is a relation database. This stores all of Operation Codes data.

* [Linux Install Instructions](https://wiki.postgresql.org/wiki/Detailed_installation_guides#General_Linux)
* [Mac Install Instructions](http://postgresapp.com/)
* [Windows Install Instructions](https://wiki.postgresql.org/wiki/Detailed_installation_guides#Windows)

### Redis
Redis is used to manage asynchronous jobs. This step is optional and only required if working on an area using `ActiveJob`.

* [Install redis](http://redis.io/download)
* Or on a mac via homebrew: `brew install redis`
* Redis is not supported on Windows.

### Bundler
Bundler manages libraries (gems) and their dependencies.

* `gem install bundler`

### Operation Code
Now you are able to install Operation Code! These next commands will pull down the source code and install all of the dependencies needed.

* `git clone https://github.com/OperationCode/operationcode.git operationcode-upstream`
* `cd operationcode-upstream`
* `bundle`
* `rake db:setup`

   Beginner's Note: When installing bundle you may encounter a problem with the pg gem. In order to resolve this problem, go through the following steps.
   * Type on your command line the following: `find /Applications -name pg_config` This should return the path of the pg_config
   * Example return: `/Applications/Postgres.app/Contents/Versions/9.5/bin/pg_config`
   * Next, set this as your path like this: `PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.5/bin/`
   * Now install pg with the following command: `gem install pg`
   * Add the PATH to your `.bashrc` or `.bash_profile`
   * Then type `bundle` or `bundle install` again to finish installing any remaining gems

### Rails on Cloud9
* [Getting Rails to work in Cloud9 in 5 easy steps!](https://ashtemp.github.io/Rails.html)
 * When cloning your fork into Cloud9, select Ruby as the template and create your workspace name and description.
 * Go down to the Bash Terminal and type in the following commands:
      * gem install rails
      * bundle install
      * rails server -b $IP -p $PORT
      * createdb operationcode_development
   * Sometimes you may have to restart the postgress server with sudo service postgresql restart.
* Your site should now open for preview at http://workpacename-username.c9users.io (ie: http://operationcode-ashtemp.c9users.io)

## Working On Your Issue
When working on github the common practice is to make a copy of the repo you want to change (known as `forking` the repo), make your changes and then request to merge those changes back into the project (known as a `pull request`). Forking a repo is done through github's web UI. It can be found in the top right corner of the [Operation Code](https://github.com/OperationCode/operationcode) github page. Once forked proceed below.

   ```bash
   # Clone your fork of the repo into the current directory
   git clone https://github.com/<your-username>/operationcode.git
   # Navigate to the newly cloned directory
   cd operationcode
   # To start the [server](http://localhost:3000) (if you receive a certificate error in your browser, go ahead and accept the certificate)
   thin start --ssl
   # Assign the original repo to a remote called "upstream"
   git remote add upstream https://github.com/operationcode/operationcode.git
   ```

Once cloned you can now create a [feature branch](http://nvie.com/posts/a-successful-git-branching-model/). It's a good idea to name your branch after the issue it's attached to.

   ```bash
   git checkout -b <feature-branch-name>
   ```

## Submitting Your Changes
When you've completed work on your feature branch you're ready to submit a [pull request](https://help.github.com/articles/using-pull-requests/).

Each pull request should:

* be tied to 1 issue
* be fully tested
* have its own tests
* not break existing tests

Once your pull request has been submitted it will be reviewed by a core team member. This process helps to familiarize more people with the codebase, and provides a second set of eyes and perspective to your new feature.

If your code is accepted it will be merged into the master branch and if all the tests pass it will be automatically deployed to [operationcode.org](operationcode.org) immediately.

### Bots

Each pull request is also inspected by the following bots:

[Hound](https://houndci.com) checks for style validation errors during pull requests. If it finds any errors, it will post a follow-up comment on the issue and point out the errors. Think of Hound as your Drill Sergeant. If this happens with a pull request you're submitting, please fix the errors and resubmit.

[Travis](https://travis-ci.org/) runs our test suite on each check in and soon will even deploy each change that gets merged.

### Add yourself

Once your pull requests has been merged don't forget to add your name to the list of contributors in [CONTRIBUTORS.md](https://github.com/OperationCode/operationcode/blob/master/CONTRIBUTORS.md).


## Contributing blog posts
Please see the [BLOG_POSTING_GUIDE](https://github.com/OperationCode/operationcode/blob/master/BLOG_POSTING_GUIDE.md). It will walk you thru the use of Jekyll and how to submit pull requests to publish your blog post.


## Code Standards

### HTML

[Adhere to the Code Guide.](http://codeguide.co/#html)

- Use tags and elements appropriate for an HTML5 doctype (e.g., self-closing tags).
- Use CDNs and HTTPS for third-party JS when possible. We don't use protocol-relative URLs in this case because they break when viewing the page locally via `file://`.
- Use [WAI-ARIA](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA) attributes in documentation examples to promote accessibility.

### CSS

[Adhere to the Code Guide.](http://codeguide.co/#css)

- When feasible, default color palettes should comply with [WCAG color contrast guidelines](http://www.w3.org/TR/WCAG20/#visual-audio-contrast).
- Except in rare cases, don't remove default `:focus` styles (via e.g. `outline: none;`) without providing alternative styles. See [this A11Y Project post](http://a11yproject.com/posts/never-remove-css-outlines) for more details.

### JS

- No semicolons (in client-side JS)
- 2 spaces (no tabs)
- strict mode
- "Attractive"

### Ruby

[Follow the ruby style guide](https://github.com/bbatsov/ruby-style-guide)


## License

By contributing your code, you agree to license your contribution under the [MIT License](LICENSE). By contributing to the code base, you agree to license your contribution under the [Creative Commons Attribution 3.0 Unported License](docs/LICENSE).
