# Storydata

This is a repo to contain game scripts for the CoffeeBreakGames slack games publishing platform.


- [Storydata](#storydata)
- [Basic Authoring](#basic-authoring)
  - [Rooms](#rooms)
  - [Actions](#actions)
  - [Items](#items)
- [Editing files online](#editing-files-online)
- [Editing Files offline using github](#editing-files-offline-using-github)
  - [Create account](#create-account)
  - [Clone the github repository](#clone-the-github-repository)
  - [Make your edits](#make-your-edits)
  - [Make a "Pull Request"](#make-a-pull-request)
    - [VSCode Plugins](#vscode-plugins)

# Basic Authoring

- Each game sits in it's own folder. Let's take the 'office' game as an example

- The game scripts live in 'yaml' files inside `GAMENAME/story`

- A top level file called [story.yaml](office/story/story.yaml)

This sets things like the overall intro to the story

## Rooms

Other files can have different rooms. eg for office we have [lobby](office/story/lobby.yaml), [attic](office/story/attic.yaml) and a room called [office](office/story/office.yaml)

Inside the room files there are two main blocks
- [actions](#actions)
- [items](#items)

## Actions
When the user types something under the `match` \
then do the things underneath.

Comments are prefixed with `#`

```yaml
      # user says this
      # check ALL these conditions
      # does user has matches?
      - match: use matches (on|with) lamp
        if:
          all:
            - matches.has = true
        # if true then do this
        # reply and set property on the 'lamp' object
        then:
          reply: You light the lamp with the matches
          setProps:
            - lamp.lit = true
        # otherwise if NOT matches.has say this:
        else:
          reply: you don't have any matches
```

## Items
An item can have a number of states. When a user types `look ITEM` or `X item` then the corresponding state is show.

```yaml
      - name: lamp
        called: light|lamp
        state: default
        canTake: true
        states:
          - name: default
            short: a basic light. It's off.
          - name: lit
            short: a lamp casting light on the room
```

# Editing files online

You can edit files right inside the githb web interface.
This is quick, but not that convenient if you're making a lot of changes.


# Editing Files offline using github

For editing lots of stuff it's much better to edit files offline.
We suggest you use the full power of GitHub. It takes a bit of setting up, but is much better for local editing of files.

## Create account
- If you don't have one, create a github account at https://github.com/
- Let one of us know your github user ID and we'll add you to this project.
- Download github desktop https://desktop.github.com/
- Download VS Code here https://code.visualstudio.com/download \
We strongly recommend the excellent and free VS Code editor for yaml script files.

## Clone the github repository
- make a clone of the "repository" onto your local machine \
  - The repo URL is `git@github.com:dcsan/storydata.git`

- Make a personal branch \
This keeps your work separate until you're ready to "merge" with everyone else's changes.

## Make your edits

- Edit and make changes locally \
You can "open in VS code"

- commit your changes \
A short message helps people know what was changed

- "push" your changes to the central repo \
At this point your changes are in github.com but in your own personal branch.

## Make a "Pull Request"
You can send a message to us to notify, but githb.com has a feature called a "Pull Request" (PR) for this.

Go here:
https://github.com/dcsan/storydata/pulls

You should see your name highlighted at top, to make a new PR

Or here if it doesn't show:
https://github.com/dcsan/storydata/compare

- choose your branch \
here you can see all the changes you made.

- Create the PR
- Ask for reviewers \
This should notify people of your new PR

You can also click the `files changed` tab to review all your changes.

If you're confident about all the changes you could just go ahead and "Merge Pull Request", or wait for someone else to review.

[Learn more about pull requests here](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests)

At this point someone will check your changes, and merge into the "master" branch and then we can publish a new version of the Bot!

### VSCode Plugins

VS code has a number of 'plugins' to make editing more convenient.
Please install the redhat YAML plugin:

https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml

Now editing `story.yaml` will show you errors when editing.

<img src='https://raw.githubusercontent.com/redhat-developer/vscode-yaml/master/images/demo.gif' />

