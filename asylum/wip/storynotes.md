tasks:
  - dress: follow your morning routine

  - handle: use handle on sink
  - soap: get soap to wash
  - wash: Follow proper procedure

  - poster: read back of poster
  - exercise: Jump as many times as there are legs in the room

  - green: use sandals on window

# Bed
pillow:
  get soap

# Wardrobe
get robe
get sandals

set:
- tasks.dress = done

get handle


## Sink
use handle on sink
use soap

use sink
  if handle.used = false
    you can't turn the faucet. it needs a handle

  if soap.got = false
    you can't wash without soap!

  if soap.got = true
    reply: What order do you want to wash in?

match: hands, neck, ear, face

set:
- tasks.wash = done


# Posters
take poster
  back of poster
  poem clue (washing sequence)


# Exercise
needs trigger from tannoy ()
18 jacks|jumps

tannoy2
  jump the same times as there are legs in the room

set:
- tasks.exercise = done

----

# DC notes:

we could provide the task list on the wall?
or as a hint system? I guess the tannoy does this to an extent.
it's a bit hard to handle the random access part, I think i'll make a task list code class.

## washing:

wash hands
wash neck
wash ear
wash face

we can ask players to say the order in one line, so it's more like a code
otherwise pretty complex with four inputs. needs a memory of previous commands...

## hints
What if they forget the Tannoy trigger?
keep it as a hint?

what if people do these things out of order?
eg wash before getting dressed (different lights?)

## Green room?
I don't follow this one: blue sandales, green light?
what action should the player do?

> You remove the sandals and lift them to the window

use sandals on window ?
seems a bit hard to guess, not natural

    ... fill thisss roooom with envyyyyy.”
    TRIGGER #5
    You remove the sandals and lift them to the window. Immediately, their light blue color is transformed to green by the yellow light without.


hard to limit the 'hints' sequence.
ideally I wanted it in order, but it's a bit hard to prevent random sequence

could have a "tidy your room" task which would lead to discovery on back of posters?


TRIGGER #4
The third green light in the column above the sink turns on.

The voice is encouraging this time. “Jack, my boy, you’re a wonderful lad. Limber and loose and clean as a goose. And dressed up so nicely to boot!



wardrobe items
hard to do separately,
i only have one level of triggers

get robe => what does that do to wardrobe state?
get sandals -> same?

so for now just going to do get clothes as a pair/single item




