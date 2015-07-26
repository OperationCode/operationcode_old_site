<<<<<<< HEAD
# Questions

This is the issue tracker for Operation Code. The Operation Code community uses this site
to collect and track bugs and discussions of new features. If you are having
difficulties using Operation Code or have a question about usage, please ask a
question on Slack: https://operation-code.slack.com.

The Operation Code community is very active on Slack and Twitter (@operation_code) and most questions receive attention the same day they're posted.

# Issue Labeling

Operation Code uses [StandardIssueLabels](https://github.com/wagenet/StandardIssueLabels) for GitHub Issues.

# Issues

Think you've found a bug or have a new feature to suggest? Let us know!

## Reporting a Bug
1. Update to the most recent master release if possible. We may have already
fixed your bug.

2. Search for similar issues. It's possible somebody has encountered
this bug already.

3. Provide JSFiddle or JSBin demo that specifically shows the problem. This
demo should be fully operational with the exception of the bug you want to
demonstrate. The more pared down, the better. If it is not possible to produce a fiddle, please make sure you provide very specific steps to reproduce the error. If we cannot reproduce it, we will
close the ticket.

4. Your issue will be verified. The provided example will be tested for
correctness. The Operation Code team will work with you until your issue can
be verified.

5. Keep up to date with feedback from the Operation Code team on your ticket. Your
ticket may be closed if it becomes stale.

6. If possible, submit a Pull Request with a failing test. Better yet, take
a stab at fixing the bug yourself if you can!

The more information you provide, the easier it is for us to validate that
there is a bug and the faster we'll be able to take action.

## Requesting a Feature
=======
# Contributing to Operation Code

Looking to contribute something to Operation Code? **Here's how you can help.**

Please take a moment to review this document in order to make the contribution process seamless and a joy for everyone involved.

Following these guidelines helps to communicate that you respect the time of the developers managing and developing this open source project. In return, they should reciprocate that respect in addressing your issue or assessing patches and features.

## Using the issue tracker

The [issue tracker](https://github.com/OperationCode/operationcode/issues) is
the preferred channel for [bug reports](#bug-reports), [features requests](#feature-requests)
and [submitting pull requests](#pull-requests), but please respect the following restrictions:

* Please **do not** use the issue tracker for personal support requests. [Twitter](http://twitter.com/operation_code) is a better place to get help. If you're already enrolled in Operation Code, we'll often take the conversation into [Slack](https://operation-code.slack.com) and hammer out the details.

* Please **do not** derail or troll issues. Keep the discussion on topic and respect the opinions of others.

## Issues and labels

Our bug tracker utilizes several labels to help organize and identify issues. Here's what they represent and how we use them:

- `bug` - Issues that are reported to us via [Twitter](http://twitter.com/operation_code) or [Issues](https://github.com/operationcode/operationcode/issues).

- `enhancement` - Issues that are suggested through [Twitter](http://twitter.com/operation_code) or [Slack](https://operation-code.slack.com).

## Bug reports

A bug is a _demonstrable problem_ that is caused by the code in the repository. Good bug reports are extremely helpful, so thanks!

Guidelines for bug reports:

0. **Validate and lint your code** &mdash; [validate your HTML](http://validator.w3.org)
   and [lint your HTML](http://www.bootlint.com) to ensure your problem isn't caused by a simple error in your own code.

1. **Use the GitHub issue search** &mdash; check if the issue has already been reported.

2. **Check if the issue has been fixed** &mdash; try to reproduce it using the latest `master` or development branch in the repository.

3. **Isolate the problem** &mdash; ideally create a [reduced test
   case](https://css-tricks.com/reduced-test-cases/) and a live example.
   [This JS Bin](http://jsbin.com/lefey/1/edit?html,output) is a helpful template.

A good bug report shouldn't leave others needing to chase you up for more information. Please try to be as detailed as possible in your report. What is your environment? What steps will reproduce the issue? What browser(s) and OS experience the problem? Do other browsers show the bug differently? What would you expect to be the outcome? All these details will help people to fix any potential bugs.

Example:

Short and descriptive example bug report title

A summary of the issue and the browser/OS environment in which it occurs. If suitable, include the steps required to reproduce the bug.

1. This is the first step
2. This is the second step
3. Further steps, etc.

`<url>` - a link to the reduced test case

Any other information you want to share that is relevant to the issue being reported. This might include the lines of code that you have identified as causing the bug, and potential solutions (and your opinions on their merits).

### Issues bots

[Hound](https://houndci.com) is a bot and part of the core team that hangs out in our GitHub issue tracker and automatically checks for style validation errors during pull requests. If it finds any errors, it will post a follow-up comment on the issue and point out the errors. Think of Hound as your Drill Sergeant. If this happens with a pull request you're submitting, please fix the errors and resubmit. Hound allows the core team to better review and maintain a clean codebase.

## Feature requests

Feature requests are welcome. But take a moment to find out whether your idea
fits with the scope and aims of the project. It's up to *you* to make a strong
case to convince the project's core team of the merits of this feature. Please provide as much detail and context as possible. Some things to consider:
>>>>>>> upstream/master

1. Search Issues for similar feature requests. It's possible somebody has
already asked for this feature or provided a pull request that we're still
discussing.

2. Provide a clear and detailed explanation of the feature you want and why
it's important to add. Keep in mind that we want features that will be useful
<<<<<<< HEAD
to the majority of our users and not just a small subset. If you're just
targeting a minority of users, consider writing an add-on library for Operation Code.
=======
to veterans learning to code. If we need to create a separate repo, we can do that too.
>>>>>>> upstream/master

3. If the feature is complex, consider writing some initial documentation for
it. If we do end up accepting the feature it will need to be documented and
this will also help us to understand it better ourselves.

<<<<<<< HEAD
4. Attempt a Pull Request. If you're at all able, start writing some code. We
always have more work to do than time to do it. If you can write some code
then that will speed the process along.

# Building Operation Code

Building Operation Code is quite simple.

```sh
cd operationcode
gem install bundler
bundle
bundle exec rake db:setup
bundle exec rails server
```
# Pull Requests

We love pull requests. Here's a quick guide:

1. Fork the repo.

2. Run the tests. We only take pull requests with passing tests, and it's great
to know that you have a clean slate: `bundle exec rspec'

3. Add a test for your change. Only refactoring of code with test coverage and documentation changes
require no new tests. If you are adding functionality or fixing a bug, we need
a test! If your change is a new feature, please
[wrap it in a feature flag].

4. Make sure to check out the
   [JavaScript Style Guide] and
   ensure that your code complies with the rules. If you missed a rule or two, don't worry, our
   tests will warn you.

5. Make the test pass.

6. Commit your changes. Please use an appropriate commit prefix.
If your pull request fixes an issue specify it in the commit message. Some examples:

  ```
  [DOC beta] Update CONTRIBUTING.md for commit prefixes
  [FEATURE query-params-new] Message
  [BUGFIX beta] Message
  [SECURITY CVE-111-1111] Message
  ```
For more information about commit prefixes see [the appendix](#commit-tagging).

7. Push to your fork and submit a pull request. Please provide us with some
explanation of why you made the changes you made. For new features make sure to
explain a standard use case to us.

We try to be quick about responding to tickets but sometimes we get a bit
backlogged. If the response is slow, try to find someone on Slack (operation-code) or Twitter (@operation_code) to
give the ticket a review.

Some things that will increase the chance that your pull request is accepted,
taken straight from the Ruby on Rails guide:

* Use idioms and helpers
* Include tests that fail without your code, and pass with it
* Update the documentation, the surrounding one, examples elsewhere, guides,
  whatever is affected by your contribution

Syntax:

* Two spaces, no tabs.
* No trailing whitespace. Blank lines should not have any space.
* a = b and not a=b.
* Follow the conventions you see used in the source already.

Inline Documentation Guidelines:

All inline documentation is written using YUIDoc. Follow these rules when
updating or writing new documentation:

1. All code blocks must be fenced
2. All code blocks must have a language declared
3. All code blocks must be valid code for syntax highlighting
4. All examples in code blocks must be aligned
5. Use two spaces between the code and the example: `foo();  // result`
6. All references to code words must be enclosed in backticks
7. Prefer a single space between sentences
8. Reference Operation Code as Ember.
9. Wrap long markdown blocks > 80 characters
10. Don't include blank lines after `@param` definitions

Code words are:

* `thisPropertyName`
* `Global.Class.attribute`
* `thisFunction()`
* `Global.CONSTANT_NAME`
* `true`, `false`, `null`, `undefined` (when referring to programming values)
* references to other properties/methods

And in case we didn't emphasize it enough: we love tests!

NOTE: Partially copied from https://raw.github.com/thoughtbot/factory_girl_rails/master/CONTRIBUTING.md


# Appendix

## Commit Tagging

All commits should be tagged. Tags are denoted by square brackets (`[]`) and come at the start of the commit message.

### Bug Fixes

In general bug fixes are pulled into the beta branch. As such, the prefix is: `[BUGFIX beta]`. If a bug fix is a serious regression that requires a new patch relese, `[BUGFIX release]` can be used instead.

For bugs related to canary features, follow the prefixing rules for features.

### Features

All additions and fixes for features in canary should be tagged as `[FEATURE name]` where name is the same as the flag for that feature.

### Documentation

Documentation commits are tagged as `[DOC channel]` where channel is `canary`,
`beta`, or `release`. If no release is provided `canary` is assumed. The channel should be the most stable release that this documentation change applies to.

### Security

Security commits will be tagged as `[SECURITY cve]`. Please do not submit security related PRs without coordinating with the security team. See the [Security Policy](http://operationcode.org/security/) for more information.

### Other

In general almost all commits should fall into one of these categories. In the cases where they don't please submit your PR untagged. An Operation Code contributor will let you know if tagging is required.
=======
Still want to contribute? Carry on.

## Environment setup
1. Install [latest Ruby](https://www.ruby-lang.org/en/downloads/)
2. Install [latest Rails](http://docs.railsbridge.org/installfest/choose_your_operating_system)
3. Install [PostgreSQL](http://www.postgresql.org)
4. Start PostgreSQL
5. Install [Bundler](http://bundler.io)

## Optional build tools
* Install [Homebrew](http://brew.sh/), a package manager for OS X
* Install [rbenv](https://github.com/sstephenson/rbenv), a tool for switching ruby versions

## Pull requests

Good pull requests-patches, improvements, new features&mdash;are a fantastic
help to better tell our story and get more veterans coding. They should remain focused in scope and avoid containing unrelated commits.

**Please check with our issues first** before embarking on any significant pull request (e.g. implementing features, refactoring code, porting to a different language), otherwise you risk spending a lot of time working on something that the core team might not want to merge into the project.

Please adhere to the [coding guidelines](#code-guidelines) used throughout the
project (indentation, accurate comments, etc.) and any other requirements
(such as test coverage).

Adhering to the following process is the best way to get your work
included in the project. Everyone is encouraged to contribute to the project by forking and submitting a pull request. Steps:

1. [Fork](https://help.github.com/fork-a-repo/) the project, clone your fork,
   and configure the remotes:

   ```bash
   # Clone your fork of the repo into the current directory
   git clone https://github.com/<your-username>/operationcode.git
   # Navigate to the newly cloned directory
   cd operationcode
   # To setup dependencies
   bundle install
   # To create development and test databases
   bundle exec rake db:setup
   # To start the [server](http://localhost:3000)
   bundle exec rails s
   # Assign the original repo to a remote called "upstream"
   git remote add upstream https://github.com/operationcode/operationcode.git
   ```

2. If you cloned a while ago, get the latest changes from upstream:

   ```bash
   git checkout master
   git pull upstream master
   ```

3. Create a new topic branch (off the master branch) to contain your feature, change, or fix:

   ```bash
   git checkout -b <topic-branch-name>
   ```

4. Commit your changes in logical chunks. Please adhere to these [git commit message guidelines](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
   or your code is unlikely be merged into the main project. Use Git's
   [interactive rebase](https://help.github.com/articles/interactive-rebase) feature to tidy up your commits before making them public.

5. Locally merge (or rebase) the upstream development branch into your topic branch:

   ```bash
   git pull [--rebase] upstream master
   ```

6. Push your topic branch up to your fork:

   ```bash
   git push origin <topic-branch-name>
   ```

7. [Open a Pull Request](https://help.github.com/articles/using-pull-requests/) with a clear title and description against the `master` branch.

## Add yourself

When you make a pull request and it's successfully merged, make sure to add your name to the list of contributors in [CONTRIBUTORS.md](https://github.com/OperationCode/operationcode/blob/master/CONTRIBUTORS.md).

## Code guidelines

### HTML

[Adhere to the Code Guide.](http://codeguide.co/#html)

- Use tags and elements appropriate for an HTML5 doctype (e.g., self-closing tags).
- Use CDNs and HTTPS for third-party JS when possible. We don't use protocol-relative URLs in this case because they break when viewing the page locally via `file://`.
- Use [WAI-ARIA](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA) attributes in documentation examples to promote accessibility.

### CSS

[Adhere to the Code Guide.](http://codeguide.co/#css)

- When feasible, default color palettes should comply with [WCAG color contrast guidelines](http://www.w3.org/TR/WCAG20/#visual-audio-contrast).
- Except in rare cases, don't remove default `:focus` styles (via e.g. `outline: none;`) without providing alternative styles. See [this A11Y Project post](http://a11yproject.com/posts/never-remove-css-outlines/) for more details.

### JS

- No semicolons (in client-side JS)
- 2 spaces (no tabs)
- strict mode
- "Attractive"

## Thanks

Huge thanks to [Twitter Bootstrap](https://github.com/twbs/bootstrap) whose [contributing guide](https://github.com/twbs/bootstrap/blob/master/CONTRIBUTING.md) this is based off of.

## License

By contributing your code, you agree to license your contribution under the [MIT License](LICENSE). By contributing to the code base, you agree to license your contribution under the [Creative Commons Attribution 3.0 Unported License](docs/LICENSE).
>>>>>>> upstream/master
