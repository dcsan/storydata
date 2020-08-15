# TODO:

## Story: ###############################
Ask woman = hallway.goons

. hallway-goons
. hallway-three
. hallway-green
. Title
Intro = . Hallway-goons



. Look = it depends on if the woman has been shot or not yet
5:38
. Macaroni= hallway.three
5:38
. Use sandals=hallway.green
5:39
. Ending = title


- random content
  - look under sheets
  - pillow
  - under bed
  - look under pillow

- broken steps in the game near end:
- real clothes > dead button
- use sandals|robe on window
- @DC. this still isn't working. If they can't solve the task, no ending.
- the soap, handle, and sandals can be gotten without actually searching for them

- look item - message even if in inv
- app / icon

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
- hint system

- reset doesn’t reset room state, need to look into that


- test write > log files?
- 'xx joined channel' - handle it better - not as text
- tannoy hints?
- slash command for hints? or to echo into room?

- handle image events

- home page for the app? /about ?

- after get item, set its 'hidden' to false
- check inventory on playthrough
- database backing?

- /hint to send hints to another channel
- lobby bot?
- sound effects
- hint system
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
