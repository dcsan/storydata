# Storydata

This is a repo to contain game scripts for the TEN GameBot scripting engine.
This allows you to play adventure games and escape room games right inside Discord with your friends.

Join our server here to try some games!
https://discord.gg/HwpBPwR


- [Storydata](#storydata)
- [Basic Authoring](#basic-authoring)
  - [Rooms](#rooms)
  - [Items](#items)
  - [Actors](#actors)
  - [Actions](#actions)
  - [Conditions](#conditions)
  - [Match Syntax](#match-syntax)
    - [Called](#called)
    - [RegEx](#regex)
    - [NLP](#nlp)
- [Editing story files](#editing-story-files)

# Basic Authoring

Each game sits in it's own folder. Let's take the 'office' game as an example

The game scripts live in 'yaml' files inside `GAMENAME/story`

A top level file called [story.yaml](office/story/story.yaml)

This sets things like the overall intro to the story, custom help

## Rooms
A story is broken up into rooms.
eg for office story we have [lobby](office/story/lobby.yaml), [attic](office/story/attic.yaml) and a room called [office](office/story/office.yaml)

Inside the room files there are two main blocks

Rooms have:
- [items](#items)
- [actors](#actors)
- [actions](#actions)
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


## Actors
Actors are a special type of item that you can have a conversation with. More later on this!


## Actions
Are how players interact with things in the room.
When the user types something that is a `match` then do the things underneath.

(Comments are prefixed with `#` )


```yaml
      # user says this:
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


# Editing story files

You can edit files right inside the githb web interface.
This is quick, but not that convenient if you're making a lot of changes.

next: [read about how to edit files and use github!](docs/editing-files.md)

