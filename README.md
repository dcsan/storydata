# Storydata

This is a repo to contain game scripts for the CoffeeBreakGames slack games publishing platform.

  - [Basic Authoring](#basic-authoring)
  - [Actions](#actions)
  - [Items](#items)

## Basic Authoring

- Each game sits in it's own folder. Let's take the 'office' game as an example

- The game scripts live in 'yaml' files inside `GAMENAME/story`

- A top level file called [story.yaml](office/story/story.yaml)

This sets things like the overall intro to the story

Other files can have different rooms. eg for office we have [lobby](office/story/lobby.yaml), [attic](office/story/attic.yaml) and a room called [office](office/story/office.yaml)

Inside the room files there are two main blocks
- actions
- items

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

## Editing Files
You can edit files right inside the githb interface, which is quick and dirty, but not that convenient for batch editing.
Instead we suggest you use the full power of GitHub. It takes a bit of setting up, but is much better for local editing of files.

- Download VS Code here https://code.visualstudio.com/download \
We strongly recommend the excellent and free VS Code editor for yaml script files.

- If you don't have one, create a github account at https://github.com/
- Let one of us know your github user ID and we'll add you to this project.

- Download github desktop https://desktop.github.com/
- make a clone of the "repository" onto your local machine \
  - The repo URL is `git@github.com:dcsan/storydata.git`

- Make a personal branch \
This keeps your work separate until you're ready to "merge" with everyone else's changes.

- Edit and make changes locally

You can "open in VS code"

- commit your changes \
A short message helps people know what was changed

- "push" your changes to the central repo

At this point your changes are in github.com but in your own personal branch. To let people know about your changes, we recommend sending a "Pull Request"


