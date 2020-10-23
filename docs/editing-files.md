# Editing Files offline using github

For editing lots of stuff it's much better to edit files offline.
We suggest you use the full power of GitHub. It takes a bit of setting up, but is much better for local editing of files.

## Create free Github account
- If you don't have one, create a github account at https://github.com/
- Let one of us know your github user ID and we'll add you to this project.
- Download github desktop https://desktop.github.com/
- Download VS Code here https://code.visualstudio.com/download \
We strongly recommend the excellent and free VS Code editor for yaml script files.

## Clone the github repository
Here I'm using the github desktop app

- make a clone of the "repository" onto your local machine \
  - The repo URL is `git@github.com:dcsan/storydata.git`

![commit](https://cbg.rik.ai/cdn/storydata/docs/images/clone-repo.png)

- Make a personal branch \
This keeps your work separate until you're ready to "merge" with everyone else's changes.

![commit](https://cbg.rik.ai/cdn/storydata/docs/images/name-branch.png)

## Make your edits

- Edit and make changes locally \
You can "open in VS code"

- commit your changes \
A short message helps people know what was changed

![commit](https://cbg.rik.ai/cdn/storydata/docs/images/commit-msg.png)

- "push" your changes to the central repo \
At this point your changes are in github.com but in your own personal branch.


## Make a "Pull Request"
You can send a message to us to notify, but githb.com has a feature called a "Pull Request" (PR) for this.

Go here:
https://github.com/dcsan/storydata/pulls

You should see your name highlighted at top, to make a new PR

![make PR](https://cbg.rik.ai/cdn/storydata/docs/images/make-pr.png)

Or here if it doesn't show:
https://github.com/dcsan/storydata/compare

- choose your branch \
here you can see all the changes you made.

![choose branch](https://cbg.rik.ai/cdn/storydata/docs/images/find-branch.png)


- Create the PR
- Ask for reviewers \
This should notify people of your new PR

You can also click the `files changed` tab to review all your changes.

If you're confident about all the changes you could just go ahead and "Merge Pull Request", or wait for someone else to review.

[Learn more about pull requests here](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests)

At this point someone will check your changes, and merge into the "master" branch and then we can publish a new version of the Bot!

Another reason for doing PRs is to check for conflicts. If you're working on a story and both of you edit the same file at the same time, often Github can just "merge" these changes. But sometimes if you edit eg the exact same line, github will flag this as a conflict, so you have to manually fix this before merging. This is a whole topic to itself though.

### VSCode Plugins

VS code has a number of 'plugins' to make editing more convenient.
Please install the redhat YAML plugin:

https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml

Now editing `story.yaml` will show you errors when editing.

<img src='https://raw.githubusercontent.com/redhat-developer/vscode-yaml/master/images/demo.gif' />

### VS Code and github
Microsoft owns both VSCode and Github, so there are excellent tools within VSCode for managing the github changes.