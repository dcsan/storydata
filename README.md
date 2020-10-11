# Storydata

This is a repo to contain game scripts for the TEN ganebot scripting engine.


- [Storydata](#storydata)
- [Basic Authoring](#basic-authoring)
  - [Rooms](#rooms)
  - [Items](#items)
  - [Actions](#actions)
  - [Conditions](#conditions)
  - [Match Syntax](#match-syntax)
    - [Called](#called)
    - [RegEx](#regex)
    - [NLP](#nlp)
- [Editing files online](#editing-files-online)
- [Editing Files offline using github](#editing-files-offline-using-github)
  - [Create free Github account](#create-free-github-account)
  - [Clone the github repository](#clone-the-github-repository)
  - [Make your edits](#make-your-edits)
  - [Make a "Pull Request"](#make-a-pull-request)
    - [VSCode Plugins](#vscode-plugins)
    - [VS Code and github](#vs-code-and-github)

# Basic Authoring

- Each game sits in it's own folder. Let's take the 'office' game as an example

- The game scripts live in 'yaml' files inside `GAMENAME/story`

- A top level file called [story.yaml](office/story/story.yaml)

This sets things like the overall intro to the story, custom help

## Rooms
A story is broken up into rooms.
eg for office story we have [lobby](office/story/lobby.yaml), [attic](office/story/attic.yaml) and a room called [office](office/story/office.yaml)

Inside the room files there are two main blocks
- [actions](#actions)
- [items](#items)

And some other engine features:
- [conditions](#conditions)


## Items
An item can have a number of states. When a user types `look ITEM` or `X item` then the corresponding state is show.

```yaml
    items:
      - name: lamp
        state: off
        canTake: true  # you can pick this up
        states:
          - name: off
            short: a basic light. It's off.
          - name: lit
            short: a lamp casting light on the room
```

You can change the state inside other actions so you could have a switch action in the room to set: `lamp.state = lit`

When the `canTake` flag allows a user to `get` something they can pick it up and add to inventory.

## Actions
Are how you interact with things in the room.
When the user types something under the `match` then do the things underneath. Check the

Comments are prefixed with `#`


```yaml
      # user says this
      - match: use matches (on|with) lamp
        then:
          # reply and set property on the 'lamp' object
          reply: You light the lamp with the matches
          setProps:
            - lamp.state = lit
```

We could also show an image here, or make other ways to say the command using the full power of RegEx syntax.

## Conditions
Allow you to check for variables before doing things.

So a simple key/lock type syntax around getting matches to light up

```yaml
    items:
      - name: matches
        canTake: true
```

this will set the `matches.has` to `yes` when a user picks something up.
(note that we don't use booleans `True|False` since everything in this engine is currently a string)

Then we can check if the user has matches when they try to light a lamp:

```yaml
      # user says this
      - match: use matches (on|with) lamp
        # check ALL these conditions
        # does user has matches?
        if:
          all:
            - matches.has = yes
        # if true then do this
        then:
          # reply and set property on the 'lamp' object
          reply: You light the lamp with the matches
          setProps:
            - lamp.state = lit
        # otherwise if NOT matches.has say this:
        else:
          reply: you don't have any matches
```

Then later you could check if the light is on:

```yaml
      # user says this
      - match: search room|look around|look for .*
        if:
          all:
            - lamp.state = lit
        then:
          reply: You look around then room...
        else:
          reply: It's too dark... if only there was a light to see?
```


## Match Syntax

### Called

We also do replacements using the `called` section for objects.

```
      - name: lamp
        called: light|lamp|torch|flashlight
```
So anywhere the user types in `torch` it would replace with `lamp`
so you don't have to put all the options into your `match` phrases.


### RegEx
All match commands are using [RegEx syntax](http://marvin.cs.uidaho.edu/Handouts/regex.html), so you can have options in brackets like:

```yaml
- match: (use matches on lamp|light lamp|turn the lamp on)
```

and much more!


Then later `use lamp` and `use light` should both work.

### NLP
This engine is also actually connected to an NLP parser using word vectors for approximation of semantic meaning, and also we do spelling correction. So `turn light on` should match `turn lamp on` with ~70% confidence. That's a little outside this basic tutorial though.

# Editing files online

You can edit files right inside the githb web interface.
This is quick, but not that convenient if you're making a lot of changes.


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