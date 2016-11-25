# Contributing to Operation Code

So, you want to learn how to program? Contributing to Operation Code is a great place to get started. This document will help you march from zero to deploying code in no time!

## Table Of Contents
1. [Quickstart](#quickstart)
2. [Setting up your environment](#setting-up-your-environment)
3. [Finding an issue](#finding-an-issue)
4. [Working on your issue](#getting-the-code)
5. [Submitting your changes](#submitting-your-changes)
6. [Code Standards](#code-standards)
7. [License](#license)

## Quickstart
1. [Setting Up Your Environment](#setting-up-your-environment)
2. [Find an issue to work on](#finding-an-issue)
3. [Submit your pull request](#submitting-your-changes)

## Setting Up Your Environment
* In order to work on the **Operation Code** site, you will need to install a few things. 
  * Beginner's Note: If you don't have Ruby and Ruby on Rails installed in your system yet, don't worry about it. After you clone the GitHub repository, they will be installed during the `bundle` command along with all the dependencies.  

  ### Ruby
  Ruby is an Object-Oriented programming language that **Operation Code** is written in. While you can install Ruby directly to your machine, it's highly recommended to use a version manager. We recommend RVM, but rbenv will also work.

  * [Install RVM](https://rvm.io/rvm/install)
  * Look [here](https://raw.githubusercontent.com/OperationCode/operationcode/master/.ruby-version) to find the version of Ruby we're using
  * Install the version of Ruby from the step above. Example: `rvm install 2.3.0`

  ### Git
  Git is a distributed version control system. This is how our code is stored and managed. Git can be frustrating, but it is an essential tool. If you want to learn more about Git, a great resource is [Think Like a Git](http://think-like-a-git.net/). If you find yourself in a real git pickle, see ["Oh, shit, git!"](http://ohshitgit.com/).

  * [Install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

  ### PostgreSQL
  PostgreSQL is an open source Object-Relations database. This stores all of **Operation Code**'s data.

  * [Linux Install Instructions](https://wiki.postgresql.org/wiki/Detailed_installation_guides#General_Linux)
  * [Mac Install Instructions](http://postgresapp.com/)
  * [Windows Install Instructions](https://wiki.postgresql.org/wiki/Detailed_installation_guides#Windows)

  ### Redis
  Redis is used to manage asynchronous jobs. This step is optional, and it is only required if you are working on an area that uses `ActiveJob`.

  * [Install Redis](http://redis.io/download)
  * If you are using a Mac, you can install it through Homebrew: `brew install redis`
  * Redis is not supported on Windows.
  * Start your Redis server: `redis-server`

  ### Bundler
  Bundler manages Ruby gems (packages) and their dependencies.

  * `gem install bundler`

  ### Node
  Node.js is a server-side Javascript environment.

  * [Linux Install Instructions](https://nodejs.org/en/download/package-manager/)
  * [Mac Install Instructions](https://nodejs.org/en/download/package-manager/#osx)
  * [Windows Install Instructions](https://nodejs.org/en/download/package-manager/#windows)

  ### Operation Code
  You are now ready for the actual **Operation Code** code base.

  * The common practice is to make a copy of the GitHub repository you want to work on (known as `forking` the repo), make your changes, and then request to merge those changes back into the project (known as a `pull request`).
  * Forking a repo is done through GitHub's web UI. It can be found in the top right corner of the **Operation Code**'s [GitHub](https://github.com/OperationCode/operationcode) page.

  * The following commands will pull down the source code, and install the necessary dependencies:
  * Make sure to replace `[YOUR-GITHUB-NAME]` with your GitHub name.  (example: https://github.com/iserbit/operationcode.git)

  #### Local Development Environment
    ```bash
    git clone https://github.com/[YOUR-GITHUB-NAME]/operationcode.git operationcode-upstream
    cd operationcode-upstream
    bundle
    rake db:setup
    thin start --ssl
    ```
    Beginner's Notes: 
    * When running the `bundle` command, you may encounter a problem with the `pg` gem. In order to resolve this problem, go through the following steps:
      * In your terminal, type the following: `find /Applications -name pg_config` This should return the path of the pg_config.
        * Example return: `/Applications/Postgres.app/Contents/Versions/9.5/bin/pg_config`
      * Set the returned path as your path: `PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.5/bin/`
      * Install the `pg` gem with the following command: `gem install pg`
      * Add the `PATH` to your `.bashrc` or `.bash_profile`
      * Type `bundle` or `bundle install` again to finish installing any remaining gems
    * When setting up the database, you may encounter a problem with Postgres database creation. Setup proper user permission for the database and the tables to be created.  

  #### Rails on Cloud9
  * Cloud9 is a web-based integrated development environment. If you do not much experience in setting up a work environment, we highly recommend Cloud9 to start. 
  * [Getting Rails to work in Cloud9 in 5 easy steps!](https://ashtemp.github.io/Rails.html)
  * When cloning your fork into Cloud9, create your workspace name and description, then select Ruby as the template. 
  * In the terminal, type in the following commands:

  ```bash
  gem install rails
  bundle install
  rails server -b $IP -p $PORT
  createdb operationcode_development
  ```
  * Sometimes, you may have to restart the postgress server with `sudo service postgresql restart`.
  * Your fork of **Operation Code** website should now be available for preview at http://workpacename-username.c9users.io (ie: http://operationcode-ashtemp.c9users.io)

## Finding An Issue
* Now you have everything setup, you will need to find issues to work on. **Operation Code** uses Github's built in issue tracker. A listing of all our issues can be found [here](https://github.com/OperationCode/operationcode/issues).

* Familiarize yourself with the issue types below, and browse for an issue that you want to work on. Don't be afraid to ask for clarification or help.

* Once you have found an issue, leave a comment stating that you plan to work on the issue. Once assigned to you, your mission is a go!

  ### Issue Types
  * Issue types are managed through labels. The below labels help us easily identify and manage issues with different workflows.

  #### [bug](https://github.com/OperationCode/operationcode/labels/bug)
  Bugs are errors in code that produce unintended or unexpected results. In addition to the `bug` label, there may also be a tag indicating what the bug affects. For example [issue#124](https://github.com/OperationCode/operationcode/issues/124) was a bug that affected the testing environment.

  #### [feature](https://github.com/OperationCode/operationcode/labels/feature)
  Features either add new functionality or improve existing functionality.

  #### [discussion](https://github.com/OperationCode/operationcode/labels/discussion)
  Discussions will generally not have specific actionable items in them, and can be used to plan and design a feature.

  #### [milestones](https://github.com/OperationCode/operationcode/milestones)
  Milestones are used as containers for new issues pertaining to a project, timeframe or feature.

  #### [beginner-friendly](https://github.com/OperationCode/operationcode/labels/beginner%20friendly)
  These items are hand picked as being great candidates as your first issue to work on.

## Working On Your Issue

* From the forked and cloned repository on your environment, you can now create a [feature branch](http://nvie.com/posts/a-successful-git-branching-model/). It's a good idea to name your branch after the issue it's attached to.

   ```bash
   git checkout -b <feature-branch-name>
   ```

* You can check the branch your are currently working on by using the `branch` command.
  ```bash
  git branch
  ```

* Once you have finished your work, head over to **Operation Code**'s main GitHub page, and make a pull request. More information about pull requests can be found in the next section. 

* To return to your main `master` branch, type the following in the terminal: 
  ```bash
  git checkout master
  ```  
## Submitting Your Changes
* When you have completed work on your feature branch, you are ready to submit a [pull request](https://help.github.com/articles/using-pull-requests/).

* Each pull request should:

  * Be tied to a single issue
  * Be fully tested
  * Have its own tests
  * Not break existing tests

* Once your pull request has been submitted, it will be reviewed by a core team member. This process helps to familiarize more people with the codebase, and provides a second set of eyes and perspective to your new feature.

* If your code is accepted, it will be merged into the `master` branch. If all the tests pass, it will be automatically deployed to [operationcode.org](operationcode.org) immediately.

* Congratulations! You have made your first contribution!

  ### Bots

  * Each pull request is inspected by the following bots:

    * [Hound](https://houndci.com) - Checks for style validation errors during pull requests. If it finds any errors, it will post a follow-up comment on the issue with the errors. Think of Hound as your Drill Sergeant. If this happens with a pull request you're submitting, please fix the errors and resubmit.

    * [Travis](https://travis-ci.org/) - Runs the test suite on each check in, and deploys each change that gets merged.

  ### Add yourself

  * Once your pull requests has been merged, don't forget to add your name to the list of contributors in [CONTRIBUTORS.md](https://github.com/OperationCode/operationcode/blob/master/CONTRIBUTORS.md).

## Code Standards

* ### HTML

  [Adhere to the Code Guide.](http://codeguide.co/#html)

  * Use tags and elements appropriate for an HTML5 doctype (ex: self-closing tags).
  * Use CDNs and HTTPS for third-party JS when possible. We don't use protocol-relative URLs in this case because they break when viewing the page locally via `file://`.
  * Use [WAI-ARIA](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA) attributes in documentation examples to promote accessibility.

* ### CSS

  [Adhere to the Code Guide.](http://codeguide.co/#css)

  * When feasible, default color palettes should comply with [WCAG color contrast guidelines](http://www.w3.org/TR/WCAG20/#visual-audio-contrast).
  * Except in rare cases, don't remove default `:focus` styles (via e.g. `outline: none;`) without providing alternative styles. See [this A11Y Project post](http://a11yproject.com/posts/never-remove-css-outlines) for more details.

* ### JS

  [Adhere to the Google JS Style Guide](https://google.github.io/styleguide/jsguide.html)

  * No semicolons (in client-side JS).
  * 2 spaces (no tabs).
  * Use `strict` mode.
  * "Attractive"

* ### Ruby

  [Adhere to the Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide)

## License

* By contributing your code, you agree to license your contribution under the [MIT License](LICENSE). By contributing to the code base, you agree to license your contribution under the [Creative Commons Attribution 3.0 Unported License](docs/LICENSE).
