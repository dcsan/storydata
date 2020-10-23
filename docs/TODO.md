## TOP
- [x] redo IF block to cascade => switch
- [x] debug robe/ etc.
- [ ] hint system
- [ ] give item to other NPC
- [ ] check talking to an NPC. ask xxx about YYYY

## TOP
- [x] splash web page with install button and video
- [x] video capture
- [ ] scoring?
- [ ] install permissions fix
- [ ] new banner image
- [ ] web editor?

- [ ] next game / production tools
- [ ] engine fixes
- [ ] marketing tune up
- [ ] install on your own server page
- [ ] tutorial page
- [ ] recruit someone to spam other servers

## MarCom
- [ ] admin only tasks - gt etc.
- [ ] simple site / page for bot
- [ ] add bot to various bot sites
- [X] make GIF anims
- [ ] spam some other admins

- [ ] get item response
- [ ] add navbar on help

- [ ] check jump 12 and jump 3 match: "(jump|jumping|jumping jacks|jacks) \\d{1} .*"
- [ ] prevent examine soap before has it
- [ ] wash vs. washing
- [ ] order of dressing
- [ ] fairy
- [ ] leo
- [ ] add survey at end

## TODO:
- [x] prevent wash before clothes
- [x] lock handle on closet until seen
- [x] panel unlock
- [ ] hanz, fez, nick etc. hint
- [ ] washing - check handle before order
- [ ] look back of poster cmd
- [ ] save/restore game state to DB?
- [ ] switch / elif
- [ ] complete role => inmate
- [ ] delete messages that are admin commands

## corridor
- [ ] 'run' in corridor!
- [ ] had enough etc. replies
- [ ] use yellow window on blue sandals
- [ ] use window on blue sandals

## scripting
- [ ] ping escape host on finishing
- [ ] lights don't match up
- [ ] door opens - animation?
- [ ] star splash
- [ ] ah thats why that message kept showing up - combination - check tasks first
- [ ] Hang robe in window
- [ ] A panel slides open on the door revealing a combination lock. > link
- [ ] add a pipe item (no pipe)
- [ ] help -
- [ ] check handle before other washing
- [ ] add 'task' step to tutorial
- [ ] lights: wrong on task4?

          - name: task4
            short: 💡💡💡💡
              all of the lights are lit up. It seems you've completed the steps required.

- [ ] 19 1 14 5 - dor alphabet
- [ ] 1010 - door based on clock time
- [ ] ENTER COMBO 9 1 0 2 - other combos 'wrong'
- [ ] 2 5 11 11 would be "BELL"
- [ ] pillowCASE
- [ ] add speaker
- [ ] ENTER COMBO DESZ - other combos are wrong


## parser
- [ ] filter emoji out

## On boarding
- [ ] team roles add automatically
- [ ] countdown time to join
- [ ] new games on request

## tutorial
- [ ] walk people through intiial commands
- [ ] lobby tutorial? type 'look' or 'inv' etc.

## scoring
- [ ] hints / counter > scoring
- [ ] timer? count up or count down?
- [ ] with warnings as you're running out of time...
- [ ] score per player?
- [ ] hints / reaction emoji on "closer"?
- [x] look wall / picture...
- [ ] wrong number of jacks > suggest to count
- [ ] hint system?
- [ ] show completed tasks?
- [ ] L item didn't work...
- [ ] image to X robe
- [ ] (Type wash , , ,  in the correct order)
- [ ] check getting dressed order works both ways
- [ ] read back of poster?
- [ ] click poster on web -> send events?

# NEXT
- [ ] marketing and test players!
- [x] abstract builder out to improve buttons
- [x] button bar: look|item|task|help   with emoji
- [ ] help in a text file?

# Later
- [ ] about / info / server link
- [ ] server animated icon?
- [ ] initial message on room.ready
- [ ] channel.name abstraction in Pal
- [x] voice channel command
- [x] how to play section
- [ ] reactions for not understood messages - react with ??
- [ ] emoji field on messages in markup
- [ ] scoring per player
- [ ] timer for whole game (+score)
- [ ] desk/notebook replace image
- [ ] look of inventory
- [ ] remove 'created with react app' from webapp

## Story/Scripting


## New Stuff!
- [ ] sound effects in voice channel
- [ ] test with Slack!
- [ ] shared code / include
- [ ] auto assign roles to open different rooms
- [ ] map
- [ ] NPCs you can chat to

- [x] install command
- [x] lobby bot / locked by channel name at startup?
- [x] hint command
- [x] puzzle on door
- [x] ending changes

## resetting stuff

reset game
- [ ] new game - pal: load data, set current room
- [ ] event -> evt: find game, checkReset, could enter room, describe items

find game - needs a game to find
sceneEvent includes game instance


- [ ] stt

- progress / task3
- hint system?
  - just buttons on a single dialog?

- add 'buttonAction' to buttons and a backstop to catch it
- audio files?

- score?
- feedback on getting it right!

- setup new slack? so we can use the voice channel
- confirm final people

- hidden object shoes
- fix room reset?

- flip to using command to send to bot, not chat?
- progress feedback
- hint/say command fix / dont remove stops
- hint system? using context
- precommands / postcommands? so
- synonyms? load at startup?

- r / reply command? when bot doesn't understand?

- NLP parser?

- authoring tools?
- way to port more content?
- how to get to launch with 3 stories?
- sketch out landing page / intro site

- web page puzzle
- audio hints?

- planning: website / marcom message
- setup for multi channel?
- deploy to app store?

## Story: ###############################

- went out of sequence / task3

task1 > dress

task2 > exercise

  - match: 24 jumping jacks|24 jacks|24 jumping jacks|jump 24 times|jump 24
    if:
      all:
        - tasks.state = task2

task3 > wash

- webview / hidden object

- the soap, handle, and sandals can be gotten without actually searching for them
- look item - message even if in inv
X app / icon

- hints?

- notebook “I’mmm envioussss of youuu Jackkk. Can you matchhhhh the collllllor of my envyyyy, Jackkk?”

- "aren't fully dressed yet" check - change message?
- add image on 'look' at end
- deafening cracks
- get poster: "You take Michael Jackson off the wall"
- multiple macaroni
- prevent multiple robes / getrobe
- room description goes missing?
- show desk state on open. maybe not on close?
- wardrobe handles / states
√ skip longer sentences > 5 words
√ 'look room' global command
√ askaboutgame button broken
√ image url for drawing
√ remove boldface in poem
√ remove extra branch at start / continue - would skip 'macaroni'

- figure out tasks and lights / images out of sync?
currently:

      - name: task1
        imageUrl: asylum/rooms/cell.jpg
      - name: task2
        imageUrl: asylum/rooms/cell-1.jpg
      - name: task3
        imageUrl: asylum/rooms/cell-2.jpg
      - name: task4
        imageUrl: asylum/rooms/cell-3.jpg
      - name: task5
        imageUrl: asylum/rooms/cell-dark.jpg

- look robe when wearing. should say 'you're wearing the robe'
I removed the image call for the robe when you "look robe" because you may actually ave it in INV (as I did) at the time looking


## CODE:  ###############################
itemCnames of undefined
13|cbg     |       at /mnt/ext250/web-apps/cbg.rik.ai/dist/mup/models/GameObject.js:8:71

- audio clues?
- hint system - multiple hints?

√ reset doesn’t reset room state, need to look into that

- test write > log files?
- 'xx joined channel' - handle it better - not as text
- tannoy hints?
- slash command for hints? or to echo into room?

- handle image events

- home page for the app? /about ?

√ after get item, set its 'hidden' to false
√ check inventory on playthrough
- database backing?

√ /hint to send hints to another channel
- lobby bot?
- sound effects
- progress bar feeling / task bar?
- post game survey?
- notebook in inventory
- notes get checked off / task list
- icons for inv items
- promo website?

- cleanup yaml  props: &ref_0

- tie bots/rooms to channels?
- help/onboarding story/bot?

- merge branch and stateInfo types
  - allow branch/state more features? IFs?
- images for inv items?

- handled/not just return boolean
- case statement? to allow multiple IFs
- exits with buttons?
- web puzzle?
- udpate command? would pull from git

- debug object - show inline script for item?

- hints show to the speaking user only?
- TS jest https://github.com/kulshekhar/ts-jest
- add submodules for github actions / checkout
- channel / GameManager -> based on slackEvent.payload.channel
√ check if already have item / dont get it twice
- cleanup pal.input so it works for tests same as the app
- end to end test system / script

- get XXX messages in parser / game level get passed to right object
- ignore too long sentences
- items shouldn't appear in room if you 'get' them
- rotating hint footer system
- test logic of 'drop' item

? buttons for doors?
? buttons to inspect items?
X store some session info (curent game?) in Pal ? so that imageUrl can use the current game
√ actions
√ better error handling with return an HandleCode
√ deploy!
√ display item cards etc.
√ finish goto?
√ footer element on blocks
√ footer message block
√ hidden item
√ hidden property on objects
√ implement basic 'drop' event
√ initProps
√ item IF / THEN / ELSE blocks
√ merge files for actions?
√ move assets to CDN as separate repo
√ note book / task list
√ on 'get' player carry items / inventory
√ prevent taking fixed items
√ session info from slackEvent => PAL
√ synonym parser @wardrobe
√ synonym replacements
√ use X on Y
√ use handle on sink


# Tester feedback / comments

this is a giveaway:

Jamin  6:33 PM
Use faucet

cbg2APP  6:33 PM
the handle is broken

Jamin  6:33 PM
X handle

cbg2APP  6:33 PM
That's an odd looking handle attached to the closet



- [x] onboard flow / reacts + roles
- [x] load story per channel
- [x] playthrough / ending
- [x] devbot setup with new ID?
- [x] dev bot and deployment
- [x] test slack
