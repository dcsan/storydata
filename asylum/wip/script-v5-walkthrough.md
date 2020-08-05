Treatment for:
“Escape From Bell Hill” (Asylum #6) VERSION 2

Commands: look, get, use, use x with y, talk to, ask about, sleep, open, close, wash, do, inventory

<p>You accept an invitation to playtest a new physical escape room. The setting of the game is a mental asylum called "Bell Hill".</p>

<p>Having signed the game’s online terms & conditions and a standard NDA, you climb into bed early Friday night, full of anticipation.</p>

<p>After all, you love escape rooms.</p>

> sleep

! [prologue hallway]

<p>Saturday morning, you arrive at the venue and are greeted by a female host wearing a white lab coat. After placing your belongings in a locker, you are led down a long hallway to a simple bedroom. In the game, you will play the role of a male inmate of Bell Hill. Your goal is to escape the asylum.</p>

> ask about time

<p>The host informs you the game will last one hour, followed by a short debrief. If you are ever stuck or want to leave, just say the safe word “MACARONI”.</p>

<p>She wishes you good luck and exits through the door by which you came. It closes seamlessly, becoming part of a blank wall of the room.</p>

> look room

<p>You have just begun to examine your surroundings when the *real* door of the room opens, and two burly men dressed as what you take to be orderlies enter.<p/>

> talk to orderlies

<p>Before you can speak, one of the orderlies locks you in bear-like grip while the other strips your pants off your legs. Your shirt is torn off next, leaving you only in your underwear and socks.</p>

> ask about clothes

<p>“Is this part of the game?!” you stammer angrily.</p?

<p>“It’s all in the terms and conditions,” says the first orderly. </p>

<p>“Looking forward to your escape attempts!” chuckles the other, following his partner out.</p>

<p>“Geesh,” you think, “That’s maybe a bit much…”</p>

<p>The door shuts with a resounding click.</p>


! [img: inmate’s bedroom – power on – no lights]
! [img: inmate’s bedroom – power on – one light]
! [img: inmate’s bedroom – power on – two lights
! [img: inmate’s bedroom – power off – three light]
! [img: inmate’s bedroom – power on – four lights]

<p>You are in an inmate’s bedroom.</p>

<p>You see a bed, a wardrobe, a desk, a sink, a window, a door, lights, and posters.</p>

> look bed

! [img: bed]

<p>You see a pillow, a mattress, and a bedsheet.

> look pillow

<p>There is a bar of soap inside the pillowcase. Was this room the location of a code
red?</p>

OR <p>Just an ordinary, head-stained pillow.</p>

> look mattress

<p>Thin and uncomfortable looking.</p>

> get mattress

<p>You don’t need it.</p>

> look bedsheet

<p>Thin and… stained. Yuck. A bit too much naturalism. </p>

> get bedsheet

<p>You don’t need it.</p>

> look soap

<p>You don’t see anything of interest.</p>

OR <p>You don’t see that here.</p> if “look pillow” and/or “get soap” hasn’t been input
previously.

> get soap

<p>Taken.

OR <p>You already have the bar of soap.</p>

> look wardrobe

! [img: wardrobe – closed]
! [img: wardrobe – open – bathrobe - sandals]
! [img: wardrobe – open – bathrobe]
! [img: wardrobe – open - sandals]
! [img: wardrobe – open – empty]

<p>Cheaper than the one your remember from your college dorm. It has two narrow doors with rounded handles that look like flower petals.</p>

<p>You see a bathrobe and sandals.</p>
<p>You see a bathrobe.</p>
<p>You see sandals.</p>

> look handles

! [img: wardrobe – handles]
! [img: wardrobe – handle missing]

<p>Upon closer inspection, something **looks odd** about one of the handles.</p>

OR <p>You have removed one of the handles.</p>

> open wardrobe/use handle

<p>The wardrobe is now open.</p>

> close wardrobe/use handle

<p>The wardrobe is now closed.</p>

> get bathrobe

<p>Worn.</p>

TRIGGER #1 (if sandals also worn)

> look bathrobe

<p>It is blue.</p>

OR <p>You don’t see that here.</p> if wardrobe is closed and/or bathrobe hasn’t been
taken.

> get sandals

<p>Worn.</p>

TRIGGER #2 (if bathrobe also worn)

> look sandals

<p>They are translucent blue, and made of rubber.</p>

OR <p>You don’t see that here.</p> if wardrobe is closed and/or bathrobe hasn’t been taken.

> get handle

<p>Taken.

OR <p>You already have the handle.</p>

> look desk

<p>A simple wooden desk with a single front drawer and a flat writing surface.</p>

> look sink

<p>The faucet handle is missing.</p>
<p>You see a handle.</p>

> use handle with sink

<p>You replace the faucet handle.</p>

	> look handle

	<p> You see nothing out of the ordinary.</p>

	> get handle

	<p> you remove the faucet handle.</p>

	> use sink/use handle

	<p>There is no handle.</p>

	AND/OR <p>You don’t have any soap.</p>

	ELSE <p>You can now **wash** yourself.</p>

	> wash hands, neck, ears, face

	TRIGGER #4

	ELSE <p>There is no handle.</p>

	AND/OR <p>You don’t have any soap.</p>

OR if order of washing is incorrect <p>The voice crackles sternly over the speaker. “Now Jack. That’s not the way mother taught you.”<p>

> look window

<p>The window is frosted and protected by metal bars from your side. Upon closer inspection, you notice that the unnatural **yellow light** from without is pulsing slightly, with the faint electrical buzz of artificial lighting.</p>

> look door

<p>It’s locked tight. Will you be able to escape?</p>

> open door

<p>It’s locked tight. Will you be able to escape?</p>

OR <p>Now unlocked, the door opens freely into a white hallway.</p> if TRIGGER #5 is initiated

TRIGGER #6

> look lights

! [img: lights – none]
! [img: lights – one]
! [img: lights – two]
! [img: lights – three]
! [img: lights – four]

<p>Apart from the diffuse light coming through the window, these green bulbs appear to be the only other source of light in the room.</p>

> look posters

! [img: posters – all three]
! [img: posters – just two]


<p>You see a drawing, a poster, and a photo.</p>

> look drawing

! [img: drawing – Vitruvian Man]

<p>It’s a reproduction of DaVinci’s classic drawing, “Vitruvian Man,” except the figure looks a lot like you at the moment.

> look poster

! [img: poster – Michael Jackson - front]

<p>You remember this album cover from childhood. However, you don’t remember Michael holding a bar of soap in it. <p>

> look photo

! [img: photo – high school]

<p>It’s you, from your senior year in high school, complete with forehead acne and love goggles. How did they manage to make a copy of this? Unnerving.</p>

> get poster

<p>You take the poster *off the wall.*</p>

	> look poster

! [img: poster – Michael Jackson - back]

You turn the poster over to see the following scrawled in black Sharpie:

Four good boys in turns did wash
First was Hans (hands) the boy from Ansbach
Next was Nick (neck) with ruddy skin
While Piers (ears) did follow after him
The last was Fez (face) a swarthy chum
He did the deed then all were done.

> do 18 jumping jacks

<p>You slip out of your blue sandals and perform 18 jumping jacks in your socks and underwear. You can’t remember doing these since childhood.</p>

<p>It’s rather fun, actually.</p>

TRIGGER #3

> use sandals with window if TRIGGER #4 is initiated

TRIGGER #5

ELSE <p>Nothing unusual happens.</p>

OR <p>You don’t have that.</p>


# Triggers

TRIGGER #1 (after 4 initial inputs) - get dressed
<p>Before you can do so, a voice crackles over a hidden speaker in the room. “To proceed to breakfast, please follow your morning routine. Remember, every good boy dresses sharply.”</p>

TRIGGER #2 - do exercise
<p>The top bulb in a column of four has come on, now glowing a bright green above the others.</p>

<p>The same voice crackles over the speaker. “That’s a good boy, Jack. Now remember, exercise makes the man. Just as many times as there are legs in the room.”</p>

TRIGGER #3 - get washed
<p>The second in the column of five green lightbulbs lights up.</p>

<p>The invisible speaker crackles. “Well done, young Jack. You’re fit as a fiddle. And now it’s time for all good boys to scrub away those mean, nasty germs. Let’s not be careless, now. Follow proper procedure.”</p>

TRIGGER #4 - color puzzle
<p>The third green light in the column above the sink turns on.</p>

<p>The voice is encouraging this time. “Jack, my boy, you’re a wonderful lad. Limber and loose and clean as a goose. And dressed up so nicely to boot!</p>

> ask about my real clothes

! [img: inmate’s bedroom – power off – three light]

<p>Suddenly, there is a deep crack, and all the lights drop out in the facility. All that remains is the artificial yellow glow from outside your window and the three illuminated green lightbulbs above the sink.</p>

> ask about those terms and conditions

<p>“Jackkkk…” The voice is faint and eerie, like a record being played at the wrong speed. “I’mmm envioussss of youuu Jackkk. Soooo envioussss of youuu. My envyyy is fillinggg thisss roooom. Fillll it with meee Jackkk… fill thisss roooom with envyyyyy.”</p>

TRIGGER #5
<p>You remove the sandals and lift them to the window. Immediately, their light blue color is transformed to green by the yellow light without.</p>

<p>The fourth and final green lightbulb above the sink blinks on, followed by a resounding crack.</p>

<p>The lights of the facility pulse as they come on once again.</p>

 > use sandals

<p>You put the sandals on once again.</p>

<p>You hear a loud click from the bedroom door.</p>

TRIGGER #6
> exit room

! [epilogue hallway]

<p>You step into the hallway, pleased with your accomplishment. </p>

<p>At the far end you see a young woman hobbling toward you. She appears to be bleeding. </p>

<p> “Don’t let them fool you,” she moans.</p>

<p> “Okay,” you think to yourself. “Maybe this is a bit much for a Saturday morning…”</p>

<p> The orderlies appear behind her.</p>

> ask woman about game

<p>“This isn’t a game…” she gurgles.</p>

<p>“Without a moment’s hesitation, one of the orderlies draws a handgun and fires three quick rounds. The deafening cracks of each roll and echo around the hallway sickeningly as you watch her collapse in a pool of… fake blood?</p>

<p>“Okay. You’ve had enough. This isn’t fun.</p>

> macaroni

ELSE <p>How do you tell them you’ve had enough?</p>

<p>You see the host in the lab coat who welcomed you taking furious notes on a clipboard at the end of the hallway.<p/>

<p>Maybe she didn’t hear you.</p>

> macaroni

ELSE <p>Did she hear you say “macaroni?”</p>

<p>The woman only looks at you and continues writing.</p>

> macaroni

ELSE <p>Say it again!</p>

<p>The woman looks up at you wanly and motions to the orderlies.</p>

<p>”This man is having delusions of being in an Italian restaurant,” she says. “He is clearly insane. Take him to *the tower*.”</p>

<p>The men advance on you.</p>

> use sandals on orderlies

<p>The lights in the facility drop out with a heavy crack, and the hallway is bathed in sickly green light. The rough hands of the orderlies grab you and drag you in the opposite direction of the host.</p>

> macaroni…

<p>As you disappear deeper into the asylum, you hear her call out.</p>

<p> “You should have read the terms and conditions more carefully, Jack.”</p>

<p>Welcome to Bell Hill! </p>


