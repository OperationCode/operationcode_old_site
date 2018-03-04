# Welcome!
Welcome to the Operation Code repo. This repo doesn't contain any code but does help coordinate all of our major projects. 
Curious to see what's going on? Check out our [roadmap](https://github.com/OperationCode/operationcode/projects/4) or our
[project descriptions](https://github.com/OperationCode/GETTING_STARTED).

## Goals
1. Serve Our Members
2. Foster the most positive and beginner friendly environment possible
3. Feature a project in as many languages as possible

## Operation Code
Operation Code is a nonprofit dedicated to getting veterans and their families into programming careers.
Our website (https://operationcode.org) is docker based and has frontend and backend servers.

## What is a frontend?

When you visit our website you're interacting with two systems, a frontend application, and a backend application.
The frontend application (where you are now) is responsible for displaying images, text, and data on our web pages.
Frontend applications are usually written using a combination of HTML, CSS, and Javascript and utilize 1 or more
frameworks such as Angular, backbone, vue, and react. https://operationcode.org uses react.

You can view the frontend repo at https://github.com/OperationCode/operationcode_frontend

## What is a backend?

The backend is responsible for providing data to the front end to display, and processing data entered into the
frontend and running various jobs like inviting new users to slack or signing them up for our newsletter. The
https://operationcode.org backend is written in rails and uses postgres, redis databases.

You can view the backend repo at https://github.com/OperationCode/operationcode_backend

## Issues (Finding something to work on)

Each Operation Code repo should follow a few standards. Each issue will have at least 3 tags:  
`Priority` - describes how quickly an item should get done  
`Status` - Lets you know if an issue is being worked on, available to work on, or waiting for another issue to be completed before it can be worked on ('blocked')  
`Type` - What kind of issue is this? A bug denotes an issue that   

### Beginner friendly!
Each repo will also have a few curated issues designated as beginner friendly.
These issues should be very well documented and easily completable for someone with little to no coding experience.

Looking to make your first Pull Request? Start here:  

[Frontend Beginner Friendly Issues](https://github.com/OperationCode/operationcode_frontend/issues?q=is%3Aopen+is%3Aissue+label%3A%22beginner+friendly%22)  
[Backend Beginner Friendly Issues](https://github.com/OperationCode/operationcode_backend/issues?q=is%3Aopen+is%3Aissue+label%3A%22beginner+friendly%22)  

### Reserving an issue

Issues that are available to be worked on are labeled with **Status: Available**.

If you would like to work on an available issue, @mention the **issues-team** expressing your interest, i.e.:

> **@issues-team** - I'd like to give this one a shot!

Once someone from the team receives your request, they will:

1. Respond to you directly in the issue
2. Remove the **Status: Available** label, replacing it with the **Status: In Progress** label

At this point, the issue is now reserved for you.

### Guidelines for working an issue

The completion of the features and bugs outlined in these issues are important to the forward movement and success of Operation Code.

As such, the following timeline guidelines are in place for working on an issue:

1. A pull request must be submitted **within 14 days** of reserving the issue.  This pull request does not need to be complete at this point.  It can be a work-in-progress.
2. If someone asks you a question in the pull request, or issue, you must respond **within 14 days**

If either of these guidelines are not met:

- it will be interpreted that the issue has become stale or abandoned
- the issue will no longer be reserved to you
- the issue will be identified again as **Status: Available**, available for other contributors to reserve

### Completing an issue

All issue pull requests that adhere to the guidelines above will be code reviewed by members of Operation Code.

Once a pull request has:

- passed code review
- been marked as **approved**
- and any associated checks have passed (i.e. continuous integration, code climate, etc.)

A member of the Operation Code team will merge your pull request, and close the issue!
