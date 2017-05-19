# Contributing to Operation Code

So, you want to learn how to program? Contributing to Operation Code is a great place to get started. This document will help you march from zero to deploying code in no time!

## Table of Contents
1. [Quickstart](#quickstart)
2. [Setting Up Your Environment](#setting-up-your-environment)
3. [Finding an Issue](#finding-an-issue)
4. [Working on Your Issue](#getting-the-code)
5. [Submitting Your Changes](#submitting-your-changes)
6. [Code Standards](#code-standards)
7. [License](#license)

## Quickstart
1. [Setting Up Your Environment](#setting-up-your-environment)
2. [Find an Issue To Work On](#finding-an-issue)
3. [Submit Your Pull Request](#submitting-your-changes)

## Setting Up Your Environment
* In order to work on the **Operation Code** site, you will need to install a few things.

  ### Docker
  Docker is a container system. Click the link below to install Docker on your Operating System.

  * [Mac](https://www.docker.com/docker-mac)
  * [Windows](https://www.docker.com/docker-windows)
  * [Linux (Ubuntu 16.04)](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04)

  ### Git
  Git is a distributed version control system. This is how our code is stored and managed. Git can be frustrating, but it is an essential tool. If you want to learn more about Git, a great resource is [Think Like a Git](http://think-like-a-git.net/). If you find yourself in a real git pickle, see ["Oh, shit, git!"](http://ohshitgit.com/).

  * [Install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

  ### Make (for Windows only)
  Make is a tool which controls the generation of executables and other non-source files of a program from the program's source files.  It is a standard part of the GNU library and is included in most distrubtions of Linux, as well as OSX.  Unfortunately, Windows does not have a native make program, so it will need to be installed and added to PATH in order for the command line commands to work.  You can use the [GNUWin general installation guide](http://gnuwin32.sourceforge.net/install.html) as a general guide on how to install a GNU package and add it to PATH.

  * [Install Make](http://gnuwin32.sourceforge.net/packages/make.htm)

  ### Operation Code
  You are now ready for the actual **Operation Code** code base.

  * The common practice is to make a copy of the GitHub repository you want to work on (known as `forking` the repo), make your changes, and then request to merge those changes back into the project (known as a `pull request`).
  * Forking a repo is done through GitHub's web UI. It can be found in the top right corner of the **Operation Code**'s [GitHub](https://github.com/OperationCode/operationcode) page.

  * The following commands will pull down the source code from your forked repo.
  * Make sure to replace `[YOUR-GITHUB-NAME]` with your GitHub name.  (example: https://github.com/iserbit/operationcode.git)

  #### Local Development Environment
    _Fork the repo first._
    ```bash
    git clone https://github.com/[YOUR-GITHUB-NAME]/operationcode.git operationcode-upstream
    cd operationcode-upstream
    git remote add upstream https://github.com/OperationCode/operationcode.git
    ```

  #### Database Setup:
  To setup the database simply run the following command in the root directory of the project.

  ```bash
  make setup
  ```

  #### Running Operation Code:
  Operation Code has some handy shortcuts built in to make common tasks simple. You can check out the [Makefile](https://github.com/operationcode/operationcode/blob/master/Makefile) to see a full listing of what these shortcuts are and what they do.

  To run Operation Code simply type:
  ```bash
  make
  ```

  You can now visit http://localhost:3000 (or run `make open`) and you should see Operation Code running locally!

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

* From the forked and cloned repository on your environment, you can now create a [feature branch](http://nvie.com/posts/a-successful-git-branching-model/). It is a good idea to name your branch after the issue it is attached to.

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

## Pull Request Guidelines; Submitting Your Changes
* When you have completed work on your feature branch, you are ready to submit a [pull request](https://help.github.com/articles/using-pull-requests/).

* Each pull request should:

  * Be tied to a single issue
  * Be named after the issue with the designated issue # as the name of the branch
  * Be fully tested
  * Have its own tests
  * Not break existing tests

* Once your pull request has been submitted, it will be reviewed by a core team member. This process helps to familiarize more people with the codebase, and provides a second set of eyes and perspective to your new feature.

* If your code is accepted, it will be merged into the `master` branch. If all the tests pass, it will be automatically deployed to [operationcode.org](operationcode.org) immediately.

* Congratulations! You have made your first contribution!

  ### Bots

  * Each pull request is inspected by the following bots:

    * [CodeClimate](https://codeclimate.com) - Checks for style validation errors, insecure and problematic code on pull requests.

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
