Capítulo 1: Intro: Making an 80-Minute AI Film
0:000 segundosWe're presenting a full feature film in can [music] in less than a month. 80 minutes long, fully AI generated. Now, the issue [music]
0:077 segundosis that we don't have the film yet. But what we do have is 10 million credits, a team of 15 people, [music] 14 days, and
0:1414 segundosno clip will make it. Welcome to episode 2.
0:2020 segundos[music]
0:2222 segundosHi, I'm Adil. If you're new here, here's what's happening. We're making the [music] first fully AI generated feature film. It premieres a can in less than a
0:3030 segundosmonth and we have 14 days to finish the whole thing. [music] We started with 10 million credits and we have 15 people on the team. If you want to know what happened in the first [music] episode,
0:3939 segundoscheck it out right here. Today is day four and today's going to be a little different. I'll be honest with you, in my videos [music] on YouTube, I usually
0:4646 segundosget everything right basically first try with the magic of editing. That's done to keep the video [music] tight and easy to digest. But today, you're going to see the entire process start to finish.
0:5656 segundosNo cuts to finish shot. No. And here's the one I prepared earlier. I'm going to fail like a lot. But most importantly, I'm going to teach you the exact
1:041 minuto y 4 segundosframeworks I use to turn those failures into cinematic shots. So good, [music] they might premiere a can someday.
1:101 minuto y 10 segundosSpecifically, here's what's happening today. I'm generating scenes 21 [music] and 23. My co-workers working on scene 22. And by the end of this episode, what
Capítulo 2: Plot Summary: Scenes 21-23
1:191 minuto y 19 segundosI make has to get the director's approval or it doesn't make the film.
1:231 minuto y 23 segundos[music]
1:231 minuto y 23 segundosYou'll learn how to create locations, props, and how to bring all of it to life with Cedus 2.0. You'll also learn how to tell slop from cinema, which
1:311 minuto y 31 segundossounds obvious, but I learned the hard way. It's not. And at the very end, I'll show [music] you exactly where we are in terms of credits and exactly how much
1:401 minuto y 40 segundosusable footage we've actually built across the whole team in 4 days. Let's get into it. All right, so the first thing we're going to need is [music] the
1:481 minuto y 48 segundosscript for scenes 21 and 23. So, we're going to start with the script. Here I have the script for scenes 21 through 23. I've cut the rest out as to not spoil the whole plot this earlier on.
Capítulo 3: Building the Shot List in Claude
1:581 minuto y 58 segundosToday we'll be working on the scenes
1:591 minuto y 59 segundos[music]
2:002 minutos21 and 23. And my coworker will be handling scene 22. Now I know it sounds
2:072 minutos y 7 segundoslike very little text, but promise you it's going to take quite a bit of time to complete. So brace yourselves. So for context, these scenes will take place
2:152 minutos y 15 segundosafter the first episode. So if you haven't seen it yet, go check it out here first. And here's what's happening.
2:202 minutos y 20 segundosIn the last scene of episode 1, Lulu [music] gets taken away. Now, here we have Roko back in their old apartment reminiscing about their past. Uh he
2:282 minutos y 28 segundoswalks in, looks around the room. There's a bunch of pictures of the whole crew uh goofing around in the past [music] and
2:362 minutos y 36 segundosthen we get the flashback scenes from the past and then closing of Ro upset in the [music] same room. Um he breaks down
2:452 minutos y 45 segundosand starts crying. It's a very emotional moment. So, it's very important for us to land this because we have to convey to the viewers that they aren't just
2:522 minutos y 52 segundosfriends, they're family. Now, to get started, we're going to head over to Claude and upload a custom skill. So, here, click customize. Create new
3:003 minutosskills. Click this plus button. Upload a skill and drag and drop this zip file, which I left in the caption. This is a custom skill that our directors build.
3:103 minutos y 10 segundosIt has pretty much all the knowledge that they've acquired throughout the series. [music] And to use it in a new chat, we're just going to invoke it. So,
3:183 minutos y 18 segundosshort list builder. Next, we need to upload the script for scenes that we're working on. Now, I'm going to give it context.
3:263 minutos y 26 segundosUm, I want a shot list for scenes 21 and 23.
3:323 minutos y 32 segundosUm, skip 22.
3:373 minutos y 37 segundosAnd next, we're going to head over to our canvas, which has all of our assets, our locations, characters, and over here we have the style prefix. So this is
3:453 minutos y 45 segundosgoing to define the style, lighting, color, uh composition, audio. These are all very important especially when
3:523 minutos y 52 segundosworking in a big team. Uh so 15 people generating the same film. We have to make sure that everything stays consistent and the style prefer lets us do just that. Uh one of the most
4:004 minutosimportant parts here is lighting. So natural light only, uh key light coming from sky and windows only. And also
4:084 minutos y 8 segundosaudio. When generating with Cance 2.0, you only get one audio track. And if your characters are speaking, uh, sometimes students has a tendency,
4:154 minutos y 15 segundosespecially in emotional moments, to add music. And in post-production, it's really difficult to separate those audio tracks. So, it's important that we tell
4:224 minutos y 22 segundosit to only add environmental sound effects, no music, no subtitles. We'll be adding our own music when we edit the full film. Now, I'm going to copy the style prefix, bring it back to Claude.
4:344 minutos y 34 segundosUm, here's my style prefix.
4:444 minutos y 44 segundosand run it.
4:474 minutos y 47 segundosThe skill is going to take the scenes and split them up into 15-second shots.
4:514 minutos y 51 segundosAnd the prompts will be tailored for the video model that we'll be using. [music] So, uploading the script was phase one.
4:564 minutos y 56 segundosPhase two is it's going to ask us for the assets that it needs. So, the characters, locations, props. Uh, as you can see, we need a character sheet of
5:045 minutos y 4 segundosRoko. Uh, then the location, the old apartment, and for props, we need the photo wall arrangement, uh, the little
5:115 minutos y 11 segundosnote that says food in the fridge, and the Polaroid of Ro and Lulu. We already have the character sheet for Roco, which we used in the previous scenes. Uh, it would be this one right here.
5:225 minutos y 22 segundosSo, now we need the location. So, the old apartment. Now, the apartment has to be in the same city as [music] where the guys live. So, I believe we have a
Capítulo 4: Collaboration Workflow for 15 People
5:315 minutos y 31 segundoslocation sheet for it right here. Uh, so I'm going to download it and I'm going to name [music] it city
5:405 minutos y 40 segundoslocation. Now in clot, I'm going to drop in the city and then [music] give a pretty detailed description of the apartment that I'm looking for. Uh, the
5:485 minutos y 48 segundosapartment needs to be in the city.
5:565 minutos y 56 segundosYou can see the same buildings from the window.
6:036 minutos y 3 segundosUm, [music] I need a wide living room with a couch [music] in the center.
6:126 minutos y 12 segundosOn the wall, there are a bunch of posters.
6:206 minutos y 20 segundosUm, there are two windows on the left side, on the right side.
6:336 minutos y 33 segundosThere's a hallway that leads to the entrance.
6:426 minutos y 42 segundosAlong the hallway, I want two doors on the left
6:516 minutos y 51 segundosand three doors on the [music] right.
6:576 minutos y 57 segundosAnd there's a small kitchen [music] on the right.
7:057 minutos y 5 segundosThis is an oddly detailed description.
7:077 minutos y 7 segundosThis came from the directors. They had a specific look in mind for the apartment.
7:117 minutos y 11 segundosSo, we're going to go with that. But if you don't have a specific image in mind, I recommend using Soul Cinema. You could just type in something like an old apartment and then [music] just batch a
7:187 minutos y 18 segundoston of images and pick the ones you like. But here, we're working with pretty demanding directors, so we're going to have to go with this. The reason I uploaded the city here and not
7:267 minutos y 26 segundosin the image generator is because Nano Pro has a pretty hard time with spatial awareness. [music] And if you upload any images of locations, it tries to fit
7:347 minutos y 34 segundosthem in the image. So, we probably end up having a room [music] outdoors. All right. So, it gave us a four view reference sheet. I don't want that just
7:427 minutos y 42 segundosyet. So, I'm just going to say uh I just need a one view image. Now, it gave us a very detailed prompt. [music] Uh it's
7:507 minutos y 50 segundostalking about the layout where everything should be placed. exactly uh what the lighting should look like, what the city outside looks like, and [music]
7:597 minutos y 59 segundosthe style from the style prefix. Now, I'm going to copy this prompt. Oh, and over here, before I start generating, I want to talk a little bit about the
8:068 minutos y 6 segundoscollab feature because I think a lot of you don't know about it yet. So, in collab over here, I'm going to create a new project. Call it scenes 21 and 23.
8:258 minutos y 25 segundosThat way I stay organized and I can keep all my scenes separately in different projects. Now I have access to all the best image models
8:328 minutos y 32 segundosand video models all in one place. And that's not even the best part. Watch this. I'm going to share this project, make it public. [music] I can invite by
8:408 minutos y 40 segundosemail or just copy the link. Toggle any of the permissions. So approval required. Anyone can join. viewer, collaborator, whether or not it's
8:498 minutos y 49 segundosvisible in community, and whether or not viewers can send messages.
8:548 minutos y 54 segundosAnd here's an example of a project that we're all working on together. So, Hell Grind, as you can see, some people are
9:019 minutos y 1 segundoworking on the chase scene, some people are creating assets, some people are creating the samurai. And the main advantage of sharing the folders this
9:109 minutos y 10 segundosway instead of for example downloading this image and sharing it separately is that this way I get all the assets, all the inputs including the prompts and I
9:199 minutos y 19 segundoseven know which tools were used to create certain images. So if I ever want to go back and tweak them, I have everything I need to do so I can also
9:269 minutos y 26 segundosleave comments on individual generations or the entire project by opening the chat over here.
9:359 minutos y 35 segundosAnd I can even hop on a video call. Look at that. I mean, what else could you possibly need for teamwork? Anyways, let's move to the apartment. So, we're
Capítulo 5: Environment Concept: The Apartment
9:449 minutos y 44 segundosback on our new project. I'm going to paste in the prompt that Claude gave us.
9:489 minutos y 48 segundosUh, I'm going to do 21x9 and generate four images. Nailing the location is very important because when
9:569 minutos y 56 segundoswe generate videos later, [music] most of the lighting and the style is going to come from this reference. So, if we mess it up, the video is going to be very sloppy.
10:0610 minutos y 6 segundosAll right, we got four images. Let's take a look.
10:1010 minutos y 10 segundosThese don't look too bad. So, we got everything we asked for. Some big windows, the city in the background, uh the couch over here, the hallway. I
10:1910 minutos y 19 segundosprefer this to be a full wall, uh like it is over here, but it messed up the hallway here. So, we're going to have to
10:2610 minutos y 26 segundosdo some more batches. [music] Also, um I don't know if you can tell, but the textures on the image look a little plasticky. Um, it's very common for
10:3410 minutos y 34 segundosNanana Pro. So, we're going to have to fix that with a prompt. Um, [music] I'm going to work a little bit on the layout. So, I want these paintings or these posters to be on the wall here.
10:4510 minutos y 45 segundosMove the kitchen over here. Um, [music] and make the windows a little smaller.
10:5110 minutos y 51 segundosOn the left side of the room, there are two windows.
11:0111 minutos y 1 segundoUh the front side is a wall covered in posters. Was that a TV?
11:1211 minutos y 12 segundosAnd a TV on a TV stand [music] just so it doesn't slam it on the wall.
11:2011 minutos y 20 segundosUm, make the couch L-shaped facing the TV.
11:3411 minutos y 34 segundosThe kitchen should be really small along the wall on the right side.
11:4611 minutos y 46 segundosand add light atmospheric
11:5311 minutos y 53 segundoshaze. This little line in the bottom over here makes a big difference in terms of lighting and textures. You'll see in a second. [music] The keywords I
12:0212 minutos y 2 segundosadded here for lighting are very important. It's going to help us fight that plasticky look that Nana Banana Pro always gives you. So, here's the new prompt. We're going to copy it over,
12:1012 minutos y 10 segundosbring it back to Higsfield, and [music] do another batch.
12:1812 minutos y 18 segundosThe reason I'm doing batches of only four is because with such a detailed prompt, Nana Banana Pro will give you fairly consistent results. So, if
12:2612 minutos y 26 segundossomething is off, the issue is probably in the prompt. Okay, I think we're getting there. Uh, we lost the hallway in this one. This one looks pretty good.
12:3412 minutos y 34 segundos[music] I think the image is a little too boring. So, maybe let's add some contrast by [music] changing the colors.
12:4012 minutos y 40 segundosSo, maybe make this wall red and the couch blue.
12:4512 minutos y 45 segundosUm, [music] and and for the vibe of this scene specifically, I want colder tones. So, we're going to tweak that as well. Um, but layoutwise, I think it's not bad.
12:5612 minutos y 56 segundosSo, we're going to go back to Claude and do some more adjustments. Um, I want the front wall
Capítulo 6: Set Refinement & Set Dressing
13:0513 minutos y 5 segundosto be red, the couch blue. Um,
13:1213 minutos y 12 segundosand maybe [music] let's change the fridge to yellow.
13:1513 minutos y 15 segundosThe fridge, yellow.
13:2213 minutos y 22 segundosUm, colder.
13:2713 minutos y 27 segundosUm, light atmospheric haze.
13:3913 minutos y 39 segundosAnd here's a new prompt. Let's try running it again.
13:4913 minutos y 49 segundosAll right, let's see what we got. We're making some progress here, except [music] we lost the hallway again. So,
13:5613 minutos y 56 segundoswe're going to have to tweak that. Ooh, this one has the best lighting so far.
14:0114 minutos y 1 segundoUh, we just have to bring back the hallway.
14:0514 minutos y 5 segundosThis wall looks a little empty, so maybe I'll add a couple posters here as well. Um the floor too.
14:1314 minutos y 13 segundosYeah, it's a little boring. So maybe the carpet. Yeah, carpet should do it. Um so you lost the hallway.
14:2314 minutos y 23 segundosUm on the right side also add carpet under the table and the couch.
14:3614 minutos y 36 segundosand add just a couple posters
14:4414 minutos y 44 segundosand the wall on the left between the windows.
14:5314 minutos y 53 segundosAll right. Now, we're going to take this new prompt, bring it back to Nana Banana Pro, paste it in, and run another batch.
15:0215 minutos y 2 segundosNow, you might have noticed that I'm not even reading these prompts. The main reason is that they're pretty long. So, it would have taken forever to go through them and [music] make sure that
15:1015 minutos y 10 segundosI got all the details right. It's easier to just batch a couple images. And if there are any parts I don't like, I'm just going to ask Claude to fix those. I can already tell that we're going to
15:1915 minutos y 19 segundoshave to tweak the prompt again. We lost all the posters here. I'm not a big fan of this arc on the hallway. Uh the
15:2615 minutos y 26 segundoslighting was definitely better on this one. Um let's [music] see here.
15:3415 minutos y 34 segundosOkay, that's a no. This one's not bad, but it painted this wall as well, which we [music] don't want.
15:4215 minutos y 42 segundosOkay, you know what? Let's go back to the cloud and say edit the previous prompt again. So, now we're going to be
15:5215 minutos y 52 segundosworking with this one. Uh, let's ask it to bring the hallway again.
15:5715 minutos y 57 segundosAdd a hallway on the right side.
16:0316 minutos y 3 segundosTwo doors on the left, three doors on the right along the hallway.
16:1616 minutos y 16 segundosWe want to add some posters here. So, add a couple posters
16:2316 minutos y 23 segundoson the wall on the left between the windows.
16:3316 minutos y 33 segundosLet's also add some curtains by the windows over here.
16:3916 minutos y 39 segundosAdd [music] really small curtains on each window.
16:4816 minutos y 48 segundosAm I forgetting something? Find the rug.
16:5216 minutos y 52 segundosAdd a gray rug under the table and the couch.
17:0317 minutos y 3 segundosand keep the rest the same. Let's try that. All right, let's try this new prompt.
17:1117 minutos y 11 segundosThis is the closest image so far to what I have in mind for the final room. So, if this prompt doesn't work, we might have to bring this to GPT image and edit
17:1917 minutos y 19 segundosthis. [music] Uh, but first, let's see what we get. Actually, I think we're getting pretty close here, too. Uh, my only issues are again [music] the arc on
17:2717 minutos y 27 segundosthe hallway. Uh, we need to bring back the posters.
17:3117 minutos y 31 segundosThe windows aren't bad. I like the new rug. And I think the hallway needs to be a little darker. Uh, so let's try
17:3817 minutos y 38 segundosediting this prompt now. I want the hallway. Are they all this wide?
17:4717 minutos y 47 segundosMore narrow. Um, and [music] up to the ceiling
17:5417 minutos y 54 segundoswithout the arc on the front wall.
18:0118 minutos y 1 segundoAdd the posters.
18:0818 minutos y 8 segundosThe hallway should be darker.
18:1418 minutos y 14 segundosUm, I don't like the curtains halfway. So, let's also ask. And the curtains should be full length.
18:2818 minutos y 28 segundosNow, we're going to take this new prompt, try running it again. So, back in Dab Banana Pro, [music] going to do another batch. We are doing a lot better
18:3618 minutos y 36 segundosalready from where we started. Uh, like take this image for example. Looks very plasticky. The textures are off. The
18:4318 minutos y 43 segundoslayout is wrong. And [music] compared to even this one or
18:5118 minutos y 51 segundosthis one, the light already feels a lot more [music] viby and moody. So, this is exactly what we're looking for. All right. And here are the new four images.
19:0119 minutos y 1 segundoI think we're getting pretty close. I like this one much better already.
19:0819 minutos y 8 segundosOkay. Now, let's make our edits on this image. So, I'm going to download this.
19:1319 minutos y 13 segundosI'm going to name it apartment one. Now, I'm going to bring it over to Claude and say we'll be editing this image.
19:2519 minutos y 25 segundosSo, what do I not like about it? It looks a little too new for an old lived in apartment. So, we need to make it a
19:3319 minutos y 33 segundoslittle older. Uh maybe let's add some add some [music]
19:4019 minutos y 40 segundosum revealed pipes on the ceiling to make it look lived in.
19:5119 minutos y 51 segundosUm it's still too bright outside.
19:5519 minutos y 55 segundosIt's darker outside. And let's make it grungier. So, um, atmospheric
20:0620 minutos y 6 segundoshaze, um, film grain.
20:1120 minutos y 11 segundosLet's add some shadow depth to make the composition more interesting. So, we're going to crush these blacks. Um, it might just work if I say crush the blacks.
20:2020 minutos y 20 segundosTo add shadow depth, give me the prompt for this edit.
20:2720 minutos y 27 segundosthe image will be attached as reference.
20:3320 minutos y 33 segundosAll right. Now, I'm going to take this edit prompt back in Kicksfield. I'm going to drag in this image and paste in that prompt.
20:4220 minutos y 42 segundosI'm going to try generating a Nanaban Pro and also in GBT image 2.0. It does pretty well with edits. [music] So, let's see how it does here.
20:5220 minutos y 52 segundosOh, I only did a batch of one. So let's do three more and then change it to four. I prefer working in batches of
20:5820 minutos y 58 segundosfour. Uh that way in a single row I have the exact same prompt. All right. So over here we have the N of another pro images.
21:0721 minutos y 7 segundosAnd these are GPT image 2. Okay. I think with GPT image uh the picture looks a little too dark for me.
21:1621 minutos y 16 segundosThese aren't terrible, but but I definitely don't like the pipes here. Uh, so we're going to have to move those maybe along the [music]
21:2421 minutos y 24 segundosceiling over here. I want to push the fridge further in instead of the stove over here. And also, let's add some lore
21:3221 minutos y 32 segundosto the room. Uh, since it's their apartment, they are skaters. So, maybe add a skateboard here. Um, [music] back
21:3921 minutos y 39 segundosin Claude. Let's make those edits. So, add a skateboard [music]
21:4621 minutos y 46 segundosto the left of the couch. Place the fridge
21:5121 minutos y 51 segundosinstead of the stove and make the pipes thinner and running.
22:0222 minutos y 2 segundosWait, that was horizontally, right? Yeah. [music] So, those are horizontal.
22:1022 minutos y 10 segundosLet's do vertical.
22:1222 minutos y 12 segundosVertically on the right hand side.
22:2022 minutos y 20 segundosAll right. The prompt that it gave us is a new edit on this image. So, I'm going to copy this. Uh, pick the one that I
22:2722 minutos y 27 segundoslike the most. [music] It's probably going to be one of the Nano Banana Pro ones.
22:3622 minutos y 36 segundosMaybe this one. Let's bring that over.
22:4122 minutos y 41 segundosI'm going to paste the prompt and hit generate.
22:5422 minutos y 54 segundosAll right. And here's our new room.
22:5622 minutos y 56 segundosOkay. The pipes should have been on the ceiling, so we're going to have to fix that. The skateboard, I think I want it on the wall and not on the couch. It
23:0423 minutos y 4 segundoskind of stands out a little too much here. Um, [music] overall, the composition is not bad, though. Yeah, let's make those edits.
23:1323 minutos y 13 segundosUh, [music] I don't want to keep editing the same picture over and over again because we're going to keep losing little details as we do so. So, I'd prefer to
23:2023 minutos y 20 segundosedit the previous image. So, in cloud I'm going to say [music] um edit the previous image again.
23:3223 minutos y 32 segundosUm, the skateboard [music] should be leaning against the wall.
23:4223 minutos y 42 segundosand not the couch.
23:4523 minutos y 45 segundosThe pipes should be on the ceiling and not the wall.
23:5723 minutos y 57 segundosAnd I didn't move the fridge. So, we'll have to reiterate that and
24:0524 minutos y 5 segundosswap the fridge with a stove. further down.
24:1324 minutos y 13 segundosIt ended up giving us a prompt to edit the last image. So, I guess I'm just going to go with it. [music] Um, so the one I liked the most was this one. Get rid of that.
24:2424 minutos y 24 segundosAll right. These are new images.
24:2724 minutos y 27 segundosI think because we keep making more and more edits, [music] it's having a hard time understanding uh the spatial layout. Like, I'm trying to place the
24:3524 minutos y 35 segundosskateboard on the left, but it's just refusing to do that. And the pipes should be running along the ceiling um above the hallway here. It did move the
24:4424 minutos y 44 segundosfridge, which is nice. Also, the color way looks a little bit plasticky. I want
24:5324 minutos y 53 segundos[music] like colder greenish color, if that makes sense. So, I think instead of editing and iterating on the same image,
Capítulo 7: Adding Narrative Lore through Props
25:0125 minutos y 1 segundoI'm going to take the one that I like the most. Um, this one here,
25:0925 minutos y 9 segundoslet's call it let's call it apartment two.
25:1625 minutos y 16 segundosNow, I'm going to bring it to cloud [music] and say I like the general
25:2525 minutos y 25 segundoslayout, but I'm going to regenerate it from scratch.
25:3425 minutos y 34 segundosgive me the full [music] prompt for it.
25:3825 minutos y 38 segundosThere will be no reference image attached.
25:4525 minutos y 45 segundosNow the edits that I want to make the pipes the pipes should not be on the wall.
25:5725 minutos y 57 segundosThey should be on the ceiling starting from the hallway.
26:1026 minutos y 10 segundosThe skateboard should be to the right from the couch or to the left, sorry, from the couch.
26:2426 minutos y 24 segundosAnd I [music] want I want colder greenish color tones.
26:3726 minutos y 37 segundosAnd I think that's good.
26:4026 minutos y 40 segundosOh man, look at this prompt. That is super detailed.
26:4426 minutos y 44 segundosIt's describing every single detail of the layout. So, let's try running that.
26:5026 minutos y 50 segundosAnd this time, we don't need the reference.
26:5326 minutos y 53 segundosAnd I'll do a new batch. Oh yeah, these are starting to look a lot better. Let's take a look.
27:0727 minutos y 7 segundosI like this one a lot. The hallway is like nice and dark. Um, the skateboard is finally there. The camera moved back
27:1527 minutos y 15 segundosa little bit and we got a wider view, which I think is a good thing. The pipes kind of make sense now.
27:2427 minutos y 24 segundosOkay, this one's my favorite so far. In this one, the layout changed completely, even though the prompt was very detailed, which is a little surprising to me. Uh, this one's not going to work
27:3227 minutos y 32 segundosfor us. [music] This one, I like the color way better, but again, the layout is completely different. So, this is a no as well. And
27:4027 minutos y 40 segundossame here. So, I guess we're going to have to go with this one. So, this one is easily my favorite. I'm going to like it. And download as well. [music] Let's name it old apartment.
27:5327 minutos y 53 segundosNow, in our folder, I'm going to get rid of the first two versions and probably the city. Now, we don't need anymore.
27:5927 minutos y 59 segundosAll right. I'm going to create a second view of this [music] layout. Uh because we're going to be navigating the scene a lot throughout the video generations, I want to give the model as much context
28:0728 minutos y 7 segundosas possible. To do that, I'm going to upload to Claude our old apartment and
28:1228 minutos y 12 segundossay, uh, I want a view from the hallway looking into the room.
28:2228 minutos y 22 segundosThe image will be attached as reference,
28:3228 minutos y 32 segundosbut I also want a detailed prompt.
28:3928 minutos y 39 segundosNow, we're going to take this 15 million character prompt, bring it back to Nana Banana Pro, paste that in. And I'm also
28:4728 minutos y 47 segundosgoing to drag in our apartment as reference.
28:5428 minutos y 54 segundosAnd while we wait for that, just take a look at how much we've moved from [music] the initial image to our final location. And it's taken us, let's see
29:0329 minutos y 3 segundoshere, uh, 44 iterations to [music] get the final layout of the room. And then we're
29:1029 minutos y 10 segundosgoing to have to do, my guess is like 20 more iterations [music] to get the view from inside the hallway.
29:1729 minutos y 17 segundosSo far, here's what we have.
29:2029 minutos y 20 segundosIt's not bad, but it's the wrong hallway.
29:2529 minutos y 25 segundosYeah. So, the hallway is coming out from that way.
29:2929 minutos y 29 segundosSo, on the left, we have to have the fridge. Uh, we should be looking out at this wall. The window should be on the right side, which is just completely
29:3729 minutos y 37 segundoswrong here. So, [music] let's tell it that the hallway in the original image.
29:4929 minutos y 49 segundosis on the right side by the fridge
30:0030 minutosand then [music] reverse angle view.
30:0730 minutos y 7 segundosThe fridge should be on the left and the mirrors [music] should be on the right.
30:1930 minutos y 19 segundosAll right. Hopefully this will do.
30:2330 minutos y 23 segundosSame reference. [music] We're just changing the prompt and generate.
30:2830 minutos y 28 segundosAll right. There's our new reverse angle.
30:3430 minutos y 34 segundosI think it's starting to understand where the hallway is. [music] But this is the wrong wall. This is better. The fridge is on the right side.
30:4330 minutos y 43 segundosBut I don't like the window here as well. Ooh, this one is nice. It even kept the doors that we used in the very
30:5130 minutos y 51 segundosfirst prompt when we described the layout of the room. It kept the fridge where we wanted. Uh there's [music] some bookshelves and some posters over here as well. And the texture is just right.
31:0331 minutos y 3 segundosThe lighting too, like it doesn't feel plasticky. It feels real, like a real still from a movie.
31:1031 minutos y 10 segundosOh, here I just gave up completely. I mean, kept the fridge, but pretty much everything else is wrong. So, I'm
31:1831 minutos y 18 segundosdefinitely going with this option over here.
31:2231 minutos y 22 segundosLet's download it as well. And I'm going to call it all department reverse. Oh, I misspelled that.
31:3031 minutos y 30 segundoswhatever.
31:3231 minutos y 32 segundos[music] Now, instead of having to upload two images every time I generate, I combine the two views together. [music]
31:3731 minutos y 37 segundosSo, in the top layup, we have the front facing wide angle and in the bottom, the view from the hallway. I ended up switching to a 16x9 aspect ratio. That
31:4631 minutos y 46 segundosway, I didn't have to cut [music] too much out from both images. Do you guys know films like Avatar, Dune, Bladeunner
Capítulo 8: Patrick Kalyn (VFX Artist) Reaction
31:5331 minutos y 53 segundos2049, Deadpool 2? Well, we managed to get a hold of the VFX artist behind those films. This is Patrick Kalin, [music] Emmy nominated VES award winner.
32:0332 minutos y 3 segundosSince Hellg Grind episode 1 is primarily CGI, we wanted to get a second opinion on what it would take to make something like that in traditional film making.
32:1132 minutos y 11 segundosSo, let's see what he has to say. All right, I just finished watching Hellgrind by Higsfield and I I mean, here's a raw reaction. This is an
32:1932 minutos y 19 segundosincredible piece of work. Um, I was blown away. I mean, there was times when I was watching it and I completely forgot that I was watching something
32:2632 minutos y 26 segundosthat was like generated with AI and um I mean that's that's got to be the the highest compliment. I mean coming from
32:3432 minutos y 34 segundosthe animation world, we call that the illusion of life and um I feel that this was achieved here. You know, I got uh
32:4132 minutos y 41 segundosdrawn into the story and um [music] there was times where I was just like, man, it's uh I could feel the emotion. I could really feel the emotion. If you
32:4832 minutos y 48 segundoswere to do something like this with a traditional shoot, you know, um, using principal photography, um, and a traditional visual effects pipeline, you've got a CG character.
32:5932 minutos y 59 segundosYou've got tons of special effects.
33:0133 minutos y 1 segundoYou'd have lots of practical effects going on, you know, rain and all that. I mean, almost every other shot was a visual effects shot. So, you'd be
33:0933 minutos y 9 segundoslooking at like 15 to 20 million US for something like [music] this. Um, it's pretty crazy what they pulled off. So, hats off. Okay, so we have the location
33:1833 minutos y 18 segundoslocked. Next, we need the props. [music] So, the photo wall, Polaroid, and a little note that says food in the fridge. [music] I think I'm going to start with a
Capítulo 9: Designing Polaroid & Note Assets
33:2633 minutos y 26 segundosPolaroid. And then for the photo wall, I want it to be consistent uh and have a lot of different images on it. Uh
33:3333 minutos y 33 segundosPolaroids more specifically. [music] So, I'm probably going to ask it to give me a bunch of different scenarios where the crew is happy um and [music] captured on
33:4233 minutos y 42 segundosa Polaroid, generate individual images, and then just put them all together in Photoshop. [music] Uh so, we'll start with a Polaroid. Give
33:5133 minutos y 51 segundosme a prompt for the Polaroid with Roco [music]
33:5933 minutos y 59 segundosand Lulu. I'll be uploading the character sheets for the faces.
34:1034 minutos y 10 segundosUm, but I want you to describe [music]
34:1834 minutos y 18 segundosthe clothing and the prompt.
34:2534 minutos y 25 segundosSo, I don't want to bother creating a new character sheet just for one small picture. So, I'm just going to have Claude come up with a clothing both for
34:3234 minutos y 32 segundosRoco both for Roco and Lulu. Um, and generate it at the same time. All right, let's bring over this prompt to Nana Banana.
34:4234 minutos y 42 segundosAnd I'm going to need childhood versions of Roco and Lulu. So, on the canvas, [music] we have
34:5034 minutos y 50 segundosu probably teenage version. Um, let's take this image.
35:1035 minutos y 10 segundosWe don't have a closeup. Yeah, this should do. And then this one for Roco.
35:1935 minutos y 19 segundosRoco teenage.
35:2235 minutos y 22 segundosAnd in the prompt when we're describing Roco and Lulu, I'm just going to tag them so we don't lose them. So this is Lulu and this is Roco.
35:3335 minutos y 33 segundosHello. There we go. And generate. All right. So, for some [music] reason, it invented new characters for us even though I uploaded the character sheets.
35:4335 minutos y 43 segundosMy guess is that the prompt is very descriptive about the appearance. So, if I want to fix that, I would upload to
35:5035 minutos y 50 segundosClaude the character sheets that I'll be using, uh, or tell it not to describe the appearance at all and only the clothing, but [music] I mean, some of
35:5835 minutos y 58 segundosthese look not bad. So, I'm just going to download this and move [music] on.
36:0536 minutos y 5 segundosAnd let's name it Polaroid and save it. Okay, we have the location locked and the Polaroid. Next, we need
36:1336 minutos y 13 segundosthe sticky note. Now, I don't think we need a complex prompt for this. Um, I think this should do. Just a closeup
36:2236 minutos y 22 segundosof a handwritten note.
36:2736 minutos y 27 segundosI cannot spell. God handwritten note on a blue sticky note
36:3436 minutos y 34 segundosthat reads, What does it read? Uh, food in the fridge.
36:4836 minutos y 48 segundosLet's do the F. There we go. Okay, this one looks the most fun and lived in, so I'll take it.
37:0137 minutos y 1 segundoUm, let's name it note.
37:0437 minutos y 4 segundosAnd let's bring it back and save it on our canvas. Oh, hello.
37:1037 minutos y 10 segundosOkay, my coworker already made a the daylight version of our apartment. It looks pretty spot-on.
37:2237 minutos y 22 segundosYeah, same room, same composition except [music] it's daytime.
37:3037 minutos y 30 segundosYeah, my guess is he used not a banana for this. Just upload this image and say it's daytime.
37:3637 minutos y 36 segundosBut yeah, that looks great. Okay. And let's drop in our note.
37:4437 minutos y 44 segundosNow, as for the photo wall, I want to generate a bunch of Polaroids like this um using all the characters and then just combine them all separately. This
37:5237 minutos y 52 segundosmight take a while, so I'm going to do a time lapse. Well, let's do one together and then I'll do time-lapse for all the other ones. [music] Uh so, for this,
38:0038 minutoswe're going to need teenager versions of all our characters. We already have Roku and Lulu.
38:0538 minutos y 5 segundos[music]
38:0538 minutos y 5 segundosUm, now we need rain.
38:0938 minutos y 9 segundosSo, rain teenage and Jack's teenage.
38:2138 minutos y 21 segundosI love his hair here.
38:2438 minutos y 24 segundosNow, I'm going to upload all those images to Claude. So, [music] Rain, Jax, Roco, and Lulu.
38:3438 minutos y 34 segundos[music]
38:3438 minutos y 34 segundosAnd then I'm going to ask for um give me a bunch of prompts
38:4038 minutos y 40 segundosto generate different Oh god, different polaroids with these characters.
38:5638 minutos y 56 segundosdescribe their clothing as well so that
39:0439 minutos y 4 segundosthey're not wearing the same thing each image.
39:1539 minutos y 15 segundosAnd for context, I'll let Claude know that I'm going to combine all of them into a photo wall.
39:2739 minutos y 27 segundosOkay, while Gord was thinking, I had an idea. So, the polar that we generated is the main point of nostalgia, like him
39:3539 minutos y 35 segundosand Lulu together, uh, when they're young. I think all the other images, [music] it could be nice to have them with the older versions of them. Okay,
39:4339 minutos y 43 segundoslet's try that again. Uh, I'm going to upload the adult versions of Ray and Jax, Lulu, and wait, no, that's teenage and Roco.
39:5839 minutos y 58 segundosAnd I'm going to say same idea, but let's do adult versions instead.
40:1240 minutos y 12 segundosOkay, it gave us a ton of prompts. Um, let's start with the first one, I guess. Um, so the
40:2040 minutos y 20 segundosfour of them on the rooftop. Going to copy the prompt.
40:2440 minutos y 24 segundosUh, paste it in. And then I need to upload all four of them, the adult versions.
40:3240 minutos y 32 segundosUm, I don't think I need to name them. Just drop it in as is. I don't need to tag them individually because in the prompt
40:4140 minutos y 41 segundoswe have description [music] of their appearance. Um, so for Lulu, woman in her late 20s with shoulder
40:4940 minutos y 49 segundoslength, brown hair, sharper features, etc. So, I'm just going to do a couple batches and then pick the [music] ones I
40:5640 minutos y 56 segundoslike. Wait, I think I forgot to get rid of the previous prompt about the handwritten note.
41:0441 minutos y 4 segundosLet me just copy this whole thing again.
41:0741 minutos y 7 segundosDelete. [music] There we go. Okay, so these are going to be a waste. God damn it.
41:1941 minutos y 19 segundosIn the last video, a lot of you noticed that I misspelled bald. Yeah, still learning how to spell. And one of the comments that I liked a lot was, "I
41:2741 minutos y 27 segundoswonder how many credits were burnt on grammatical errors like that." And trust me, a lot. [music] Okay, just like I thought, some of these
41:3541 minutos y 35 segundosended up having the sticky note on it with the food in the fridge, so it's a good thing we regenerated. These look pretty nice.
41:4441 minutos y 44 segundosOkay, well, these are broken. This is not bad.
41:5041 minutos y 50 segundosThis is not bad. I think I like the lighting on this one the best. And all the faces stayed consistent. [music] So, save that.
42:0342 minutos y 3 segundosAnd I'm just going to name these photo wall one. Now I could generate the photo wall [music] with just one image in Nana
42:1142 minutos y 11 segundosBanana, but my guess is that even with a detailed prompt, their faces would probably drift. And since this film is premiering at CAN, we can't have that.
42:1942 minutos y 19 segundosUm, to prove my point, I'm going to get a prompt. Give me a prompt for a photo wall with all these characters.
42:3042 minutos y 30 segundosUm, actually with a bunch of Polaroids,
42:3842 minutos y 38 segundoswith all these characters in different moments, be very descriptive about each Polaroid.
42:5242 minutos y 52 segundosOh god.
42:5542 minutos y 55 segundosUm, I'll be uploading the character sheets for reference.
43:0643 minutos y 6 segundosOkay, so we got this really long prompt and it's describing 12 Polaroids on the same wall. Um, it has description of what's happening, who's in the frame.
43:1643 minutos y 16 segundosLet's try running it. So, the characters are already attached.
43:2343 minutos y 23 segundosand let's see what we get.
43:2743 minutos y 27 segundosOkay, let's see what these photo walls look like uh right off the bat. Ro, what happened to your dog?
43:3743 minutos y 37 segundosThis is terrible. Okay.
43:4043 minutos y 40 segundosYeah, I mean, if we're hoping to show this film on the
43:4843 minutos y 48 segundosbig screens, I can. This is just unacceptable.
43:5343 minutos y 53 segundosYeah, we're going to do one image at a time and then stitch them all together.
43:5643 minutos y 56 segundosI'm just going to do time lapse so you don't spend 40 hours here with me.
44:0344 minutos y 3 segundos[music]
44:1844 minutos y 18 segundos[music]
44:3444 minutos y 34 segundos[music]
44:3644 minutos y 36 segundosAll right, so I got all the Polaroids ready. I had a little change of plans along the way, so I went back to Claude and Oh god, let me find it here.
44:4744 minutos y 47 segundosYeah. So, I said I'll be uploading a picture of the apartment for reference as well. Uh cuz I figured it would make sense that all the memories from the
44:5544 minutos y 55 segundospast should be in that apartment. Uh since they all live together and then Claude asked me for the image of the apartment. I uploaded it and then it
45:0445 minutos y 4 segundosstarted trying to describe the apartment in every prompt. So, I stopped it immediately and said I'll be attaching [music] uh the apartment so you don't
45:1245 minutos y 12 segundosneed to describe it in every prompt. Uh, and then I just copy pasted each one of them and generated a ton of images. And then I stitched them all together just
45:1945 minutos y 19 segundosin Photoshop. And this is where we're at. So all the Polaroids, a bunch of different memories. All right. So that's
45:2745 minutos y 27 segundosour final prop locked. Let's bring it over to our canvas. So I'm going to drag that right here.
45:3445 minutos y 34 segundosA little OCD, so I'm going to try and center these.
45:3845 minutos y 38 segundosAll right. All right. So, we have the location, the Polaroid, uh the sticky note, and the photo wall. Those will do for now. We might have to generate some
45:4545 minutos y 45 segundosmore as we go. Uh but let's move to the most interesting part, generating videos with Cense 2.0. So, for this, in the same chat with Claude, I'm going to upload the images that we just got.
Capítulo 10: Generating Video with Seedance 2.0
45:5545 minutos y 55 segundos[music] So, the photo wall, um, we'll need a photo of Roco, the Polaroid,
46:0446 minutos y 4 segundosuh, the old apartment, and let's ask it to now build the shot list. All right, so the process started.
46:1446 minutos y 14 segundosThe reason I didn't invoke the skill again is because we did it at the very beginning [music] and Claude can keep context of the entire chat. Um, so as
46:2146 minutos y 21 segundosyou can see, it noticed that we completed all three phases. Uh, in phase one, we started with the shot list.
46:2946 minutos y 29 segundosPhase two, we created the assets,
46:3046 minutos y 30 segundos[music]
46:3146 minutos y 31 segundosand now we're mapping all the prompts onto the scenes. Uh, so it managed to
46:3846 minutos y 38 segundosgrab all the assets perfectly. So, the old apartment, uh, Roco, the Polaroid, and the photo wall. I did forget to
46:4746 minutos y 47 segundosupload the sticky note. I think we'll be okay. It's a pretty small note. Cas might be able to render it on its own.
46:5446 minutos y 54 segundosUh when we get to that stage of the scene, if if it's struggling, if it's not [music] working, uh I'm going to generate it and upload it. While we're
47:0147 minutos y 1 segundowaiting for Cloud to do its thing, uh I created a new timeline in my editor and I also downloaded some music, which I called sad music. I recommend editing as
47:0947 minutos y 9 segundosyou go. That way you know what you're still missing, how your shots work together. It's also helpful to edit with music at the same time. Um that way you
47:1847 minutos y 18 segundosknow what it will look like in the final edit. All right, so Claude is done doing its thing. Uh I'm going to click it right here and I recommend opening the
47:2647 minutos y 26 segundosHTML file right in cloud and then as we go further whenever we need any prompts edited uh the workflow is going to be
47:3347 minutos y 33 segundospretty simple. So I'm going to take [music] prompt 21A for example and say um actually I'm just going to show you
47:4047 minutos y 40 segundosas we go. Let's try and run it first. So this is our first scene. We have [music] the description up top. So 21
47:4947 minutos y 49 segundosA would be Gro's hand enters frame. Key in lock. Door swings inwards [music] into the dark apartment beyond. He steps
47:5847 minutos y 58 segundosin silhouetted against the hallway light from the corridor behind him. He stops just inside the door. Doesn't move further. So again, that's the first
48:0748 minutos y 7 segundosscene where Rocco unlocks the door, enters, and stands by the door looking around their apartment. So let's try that.
48:1448 minutos y 14 segundos[music]
48:1448 minutos y 14 segundosuh in collab my we're going to switch over to video.
48:1848 minutos y 18 segundosOut of these characters, we're only going to need Roco and the apartment.
48:2248 minutos y 22 segundosLet's verify them. I'm going to paste in our prompt. Now, we'll be doing 21x9 instead of 16x9 because we're showing
48:2948 minutos y 29 segundosthis film on the big screens. I can if you forgot. Um anything I'm missing here?
48:3748 minutos y 37 segundosYeah. So, the images that we're referencing should be of Roku, the character sheet, and the old apartment.
48:4448 minutos y 44 segundosRoco all the apartment. [music] In this case, the order does matter. So, Roco has to go first because he's described
48:5148 minutos y 51 segundosfirst and then the apartment second. And we're just going to run a few batches and see what we get. I prefer doing batches of eight and then seeing if it's
48:5948 minutos y 59 segundosdoing what I wanted to do. Uh you'll notice right away if a few of your videos are making the same mistake, uh that's when you stop them and head over
49:0749 minutos y 7 segundosto Claude and fix your prompts. Oh, and the reason the prompt is in Chinese isn't because I speak Chinese. I don't.
49:1449 minutos y 14 segundosWhen Cedus 2.0 just came out, it worked better with Chinese prompts, but also it had a hard cap of 3,000 characters per
49:2149 minutos y 21 segundosprompt. So, this was our way of kind of working around it. In English, [music] per word, you might have to use 5 to 10
49:2849 minutos y 28 segundoscharacters, whereas in Chinese, it's one to two max so I could cram in more information within those 3,000 characters. Cedence does take some time
49:3649 minutos y 36 segundosto generate. So, in the meantime, I want to fix one thing that I don't like about a short list. So, it was supposed to have the prompts on one side and then
49:4449 minutos y 44 segundosthe description on the left side. For some reason, it didn't. I think I might have broken the skill. I am going to fix it and then leave it in the description if you want to check it out. Uh, but
49:5249 minutos y 52 segundoslet's just ask Claude to have um make the shot list two columns.
50:0250 minutos y 2 segundosColumns, right? Rows this way, columns this way. Yeah. Um, on the left side
50:0950 minutos y 9 segundosshould be the description of the scene /prompt and on the right the prompt itself.
50:2550 minutos y 25 segundosAlso, these warnings, the failure modes, uh those are things like here for example, it's telling Cedense to not
50:3250 minutos y 32 segundosdrift the Polaroid even though it's really small. Now, we noticed that prompt handles like this tend to do a lot better in the prompt, but for some reason, [music] it's not in the prompt.
50:4150 minutos y 41 segundosSo, I'm going to ask it to fix that as well. Uh the failure
50:4950 minutos y 49 segundosmodes should be inside the prompts as well. Um, also in Chinese.
50:5950 minutos y 59 segundosBoom. And we're just going to let it run. [music] And in the meantime, our generations are ready. So, let's take a look at what we've got. So, here's the first one.
51:0851 minutos y 8 segundosNope. Okay. That is totally wrong.
51:2051 minutos y 20 segundosOkay. So, is that why is he standing like that? Okay.
51:2851 minutos y 28 segundosNope.
51:3851 minutos y 38 segundosOkay. So, I can already tell that I don't like the store opening at the beginning, so we might just cut it out all together. As you might have noticed, I'm not watching the whole video. Uh,
51:4651 minutos y 46 segundoswe're going to batch a lot of videos and it would have taken forever. So, just kind of like skim through the video. uh take a look at different shots. [music]
51:5451 minutos y 54 segundosIf the composition looks right, it's worth watching the whole thing. Um if he's standing in the middle of the room looking very weird, then that shot is probably not worth it.
52:0652 minutos y 6 segundosLike this one for example. All right, he missed the key altogether.
52:1752 minutos y 17 segundosOh no, I don't like that at all.
52:2552 minutos y 25 segundosIt might be because we're having him enter from outside into the room. Uh students [music] has a harder time understanding I guess spatial awareness.
52:3952 minutos y 39 segundosThat doesn't work either.
52:4652 minutos y 46 segundosAll right. So all eight failed. So, there's definitely something wrong in the prompt. There's no [music] point in batching further. So, let's go back to Claude and fix our prompt. Okay, Claude
52:5552 minutos y 55 segundosis still reformatting her shot list. It is taking quite a bit of time and burning quite a few tokens, but it's going to be worth it in the long run.
53:0453 minutos y 4 segundosAlso, false alarm on the shot list. It did work. It's just that the screen was too narrow. So, if I make it wider this way, both columns [music] fit. Uh this
53:1253 minutos y 12 segundosway, we can see the description on the left and then the prompt itself on the right. Uh because I clearly don't speak Chinese. [music]
53:2053 minutos y 20 segundosUh so for the first prompt, Ro unlocks the door from outside. The door swings inward. He steps in slowly.
53:2953 minutos y 29 segundosMhm. Okay. I think maybe let's try um so to edit the prompts, you're going to start with for prompt [music] and then you're going to give the number. So 21A.
53:4153 minutos y 41 segundosUm let's have the camera Oh my god, I can't spell today. The
53:5053 minutos y 50 segundoscamera inside the [music] room at in the first shot.
53:5753 minutos y 57 segundosUm, he opens the door, walks in, and that might be enough for the first shot. So, let's try that. All
54:0654 minutos y 6 segundosright, so it updated the prompt. Uh, it updated it right in the shot list here.
54:1054 minutos y 10 segundosThis helps a lot when you're generating big projects. you can keep track of all your prompts. Uh, and in case you want to tweak any of your videos later, you
54:1854 minutos y 18 segundosdon't have to go looking for them. And
54:2054 minutos y 20 segundos[music]
54:2154 minutos y 21 segundosI guarantee you, we're going to have to regenerate some of these prompts. Um, according to the plan, the first week we're spending on generating the full 80
54:2854 minutos y 28 segundosminutes. And then second week, we're going to refine key moments. [music] So, having the shot list for each scene really helps. So, I'm going to take this
54:3654 minutos y 36 segundosprompt, paste it here, and generate couple more.
54:4254 minutos y 42 segundos[music]
54:4254 minutos y 42 segundosLet's do just one batch this time. All right, it's done generating finally.
54:4954 minutos y 49 segundosHere's the first one. Okay, we have like 15 doors in this room. It's definitely sloppy. So, this is a no. And he walked
54:5854 minutos y 58 segundosin from this side, but now he's here. So, this doesn't work.
55:0655 minutos y 6 segundosAgain, a bunch of doors. So, I think Sidens is having a hard time understanding that we want the camera placed here facing inwards [music]
55:1455 minutos y 14 segundosor rather here facing that way. So, we're going to have to tweak that in the next prompt.
55:2155 minutos y 21 segundosAgain, invented a door where it shouldn't be. So, that doesn't work.
55:2755 minutos y 27 segundosThe second shot also wrong.
55:3255 minutos y 32 segundosOkay, this is not bad. But again, we have a lot of doors here and I want the camera to be a little further in and
55:4055 minutos y 40 segundosalso the light that comes in from the outside a little too bright. So, we're going to
55:4655 minutos y 46 segundosfix those things. So, again, for prompt uh 21A, right? Yeah, 21A.
55:5355 minutos y 53 segundosUh for the first shot, let's do
56:0156 minutos y 1 segundoOh [music] god. Let's do a push hand in uh from a medium angle.
56:1156 minutos y 11 segundosGo to a closeup at the beginning. The door is closed.
56:2256 minutos y 22 segundosRoco opens it.
56:2556 minutos y 25 segundosum the shot and on a closeup on him.
56:3556 minutos y 35 segundosAnd for the lighting, um [music] let's do haze from a cold light
56:4356 minutos y 43 segundosum outside hands from a cold light.
56:5356 minutos y 53 segundosUm, what else didn't we like here? [music] Um, what else didn't we like here? So,
57:0057 minutosthe composition that works. [music] Okay, let's try that
57:0957 minutos y 9 segundosactually before it updates. Maybe in the same prompt. Um, okay, I'm going to or maybe just edit this [music] for the second shot.
57:2057 minutos y 20 segundosI want a super low angle closeup on his legs
57:2957 minutos y 29 segundos[music]
57:3257 minutos y 32 segundosand his boots, I guess, as he steps in.
57:3857 minutos y 38 segundosSo, we get this really dramatic, tense moment. He walks in. Uh, the camera is pushing in, the door opens. [music] Uh,
57:4557 minutos y 45 segundoshe walks in and stops. The camera stops very close to his face and then the second shot on his boots as he keeps walking.
57:5457 minutos y 54 segundosWell, I hope you got that and I hope Claude got that. While we wait for the shot list to update, here's a little update for you. On day two, I spent
Capítulo 11: Day 2 Update: Scrapping Scenes & Credit Burn
58:0258 minutos y 2 segundos[music] nearly 100,000 credits on a two and a half minute scene, which I almost completed, and then we ended up changing
58:1058 minutos y 10 segundosthe script uh where it's a flashback scene um from their childhood. Uh we decided to change the location and
58:1958 minutos y 19 segundos[music]
58:2058 minutos y 20 segundosthe dialogues. So, I had to scrap the entire 2 minutes of Generations. Um, that hurt [music] and it's probably
58:2758 minutos y 27 segundosgoing to happen again. But that's how you get greatness. That's how you get cinema. All right, it's done updating.
58:3458 minutos y 34 segundosSo, [music] I'm going to take the new prompt right there. Actually, let's move it
58:4158 minutos y 41 segundosagain so that we [music] have the description as well. Uh, just to double check. Medium to close up on Roa at the
58:4958 minutos y 49 segundosdoor and then a super low closeup on his boot stepping [music] in.
58:5758 minutos y 57 segundosThat sounds about right. Okay, I'm going to paste that in and see what we get.
59:0259 minutos y 2 segundosAnd our videos are ready. So, let's take a look.
59:0759 minutos y 7 segundosOkay, I don't like that the camera is too far out. Walk in.
59:1759 minutos y 17 segundosOkay.
59:1959 minutos y 19 segundosOkay. This [music] like tiny face here is not bad, but it's not worth taking only 2 seconds over this whole video.
59:2759 minutos y 27 segundosI think the main issue here is that we have too many doors on the sides. It might be coming from Yeah, it's actually from the key frame. But if we put the
59:3659 minutos y 36 segundosthe camera further in, that might solve our issue. So, we're going to try that next.
59:4659 minutos y 46 segundosAll right. There's way too much haze over there.
59:5259 minutos y 52 segundosMan, this one had potential, but the hallway just looks weird. And the door.
1:00:031 hora y 3 segundosNope. Let him know immediately.
1:00:091 hora y 9 segundosAnd yeah, that doesn't make sense either. So the two main issues are that the boots the stepping forward it just
1:00:181 hora y 18 segundosdoesn't land. So it needs to be longer and he needs to actually start walking.
1:00:221 hora y 22 segundosAnd in the first phase we want to move the camera a little further in. So let's try that. So back in Claude again in prompt 21A.
1:00:341 hora y 34 segundosUm the first shot in the first shot
1:00:421 hora y 42 segundosuh the camera should start from closer to the door if that makes
1:00:501 hora y 50 segundossense. Um and he doesn't step in yet.
1:01:041 hora, 1 minuto y 4 segundosHe just looks in mysteriously.
1:01:121 hora, 1 minuto y 12 segundosOh god, that's so bad. Okay, you didn't see that. [music]
1:01:201 hora, 1 minuto y 20 segundosUm, and make the second shot
1:01:271 hora, 1 minuto y 27 segundosslightly longer. Um, and that's when he steps into the room.
1:01:421 hora, 1 minuto y 42 segundosClaude actually understands when you make some spelling errors, but I did get slammed for it in the last video, so I'm
1:01:491 hora, 1 minuto y 49 segundosgoing to try and spell correctly. All right, then. And here's our prompt.
1:01:531 hora, 1 minuto y 53 segundosLet's copy it over, paste it in, and [music] generate.
1:02:021 hora, 2 minutos y 2 segundosNow, the nice thing about these generations is that I upload the characters and the locations once, [music] and then with a shot list, it's
1:02:101 hora, 2 minutos y 10 segundosalways going to tag them in the same sequence. So, image one is always Rocco and image two is always the location, so I
1:02:191 hora, 2 minutos y 19 segundosdon't have to reupload and retag them every time. Okay, while we're waiting for these, let's go to YouTube, check out our last episode, and maybe answer some comments.
1:02:291 hora, 2 minutos y 29 segundosLet's [music] see. So, only about one of 64 video generations, and only one out of 100 made it in. Sounds about right.
1:02:401 hora, 2 minutos y 40 segundosThank you for being honest about the credits and group effort it takes to get the results you all achieved. Best of luck with a [music] featurelength film.
1:02:471 hora, 2 minutos y 47 segundosLooking forward to seeing it. Thank you. That means a lot. 10 million credits. Yeah. Good luck for us, Common Fox.
1:02:541 hora, 2 minutos y 54 segundosYeah. Well, if you're shooting this traditionally, uh I'm sure you've seen in the previous [music] episode, um the
1:03:011 hora, 3 minutos y 1 segundodirector of the mask estimated it to be minimum of 5 [music] million. Uh for us,
1:03:071 hora, 3 minutos y 7 segundosit cost 70,000. So, it is still quite expensive, but it's a lot cheaper to
1:03:141 hora, 3 minutos y 14 segundoscompared to traditional film making. So again, it's just an [music] easier entrance to cinematography. It's very
1:03:221 hora, 3 minutos y 22 segundosgood. You talked about credits before and included a tracking in the series.
1:03:261 hora, 3 minutos y 26 segundosYeah. Again, this is the issue with a lot of my previous videos where again with the magic of editing, I just click generate and uh you know, always get
1:03:351 hora, 3 minutos y 35 segundosgreat results. And that's again done to keep you engaged and keep the videos interesting. But obviously that's not always true. You have to [music]
1:03:431 hora, 3 minutos y 43 segundositerate. You have to change your prompts and you have to understand which parts of your prompts to edit to get the final result. And our videos are done. So, let's take a look.
1:03:551 hora, 3 minutos y 55 segundosOoh. Okay. There's something there.
1:04:041 hora, 4 minutos y 4 segundosOkay. I like this already. Let's check the next one.
1:04:101 hora, 4 minutos y 10 segundosWell, that [music] broke in the waterways, so that's a no.
1:04:171 hora, 4 minutos y 17 segundosThis could be nice. But again, this wall in the background kind of throws me off.
1:04:281 hora, 4 minutos y 28 segundosOkay. Well, he walked in from the wrong side, so that's a no.
1:04:371 hora, 4 minutos y 37 segundosOkay, the camera's doing too much.
1:04:411 hora, 4 minutos y 41 segundosThis handshake and then it rising as it's pushing in.
1:04:461 hora, 4 minutos y 46 segundosIt's an emotional moment, but it can't overload the viewer. So, let's just stick to one motion to push in. Uh, I'm
1:04:541 hora, 4 minutos y 54 segundosgoing to try downloading this and I'm going to bring it to my timeline right away. So, again, edit as you go.
1:05:011 hora, 5 minutos y 1 segundoLet's see how it looks.
1:05:131 hora, 5 minutos y 13 segundosOkay. I don't like the music overlap at the beginning. So, maybe I'm going to let the door open and then play the music too fast.
1:05:301 hora, 5 minutos y 30 segundosOkay. kind of like that.
1:05:441 hora, 5 minutos y 44 segundosOkay. Well, definitely not the closing. So, maybe let's cut this here.
1:05:531 hora, 5 minutos y 53 segundosAnd it's kind of throwing me off how much he's opening the door.
1:06:001 hora y 6 minutosAnd also him leaning here and stepping with the right foot doesn't make sense.
1:06:071 hora, 6 minutos y 7 segundosSo I could cut it here and then right at the footstep
1:06:161 hora, 6 minutos y 16 segundosand then just get rid of that. Not quite right.
1:06:321 hora, 6 minutos y 32 segundosOkay, this just doesn't land. I think maybe let's try a lower angle.
1:06:401 hora, 6 minutos y 40 segundosOr you know what? Let's try generating a couple more. Just do a ton of batches.
1:06:441 hora, 6 minutos y 44 segundosI'm sure we're going to get a decent result. The problem looks nice. Like the motion, the action is what we want. It's
1:06:521 hora, 6 minutos y 52 segundosjust slightly off. So, doing a couple bashes might solve the issue here. Okay, after a couple iterations with the same prompt, I think I landed on the one that I like the most. Uh, let's give it a go.
1:07:041 hora, 7 minutos y 4 segundosThis one right here. See?
1:07:181 hora, 7 minutos y 18 segundosOh, that's nice.
1:07:211 hora, 7 minutos y 21 segundosAll right, one more time.
1:07:341 hora, 7 minutos y 34 segundosOh, I'm feeling it. Can you guys feel it?
1:07:391 hora, 7 minutos y 39 segundosAll right, just for comparison, let's try that one more time for the old one.
1:07:501 hora, 7 minutos y 50 segundosThey are pretty similar, but you can close the door and this awkward stance at the end. Yeah, I'm definitely going
1:07:561 hora, 7 minutos y 56 segundoswith this one. Let's get rid of this and bring that up.
1:08:061 hora, 8 minutos y 6 segundosAll right, I might want to do an L cut here at the door closing. Well, you can't really [music] Oh, hold on. Yeah, so
1:08:141 hora, 8 minutos y 14 segundosthis door closing might be a nice sound for the next shot. This is what we call an L cut. I'm going to keep it for now,
1:08:221 hora, 8 minutos y 22 segundosbut when we generate the next shot, if it blends in with this one, uh, we're just going to do a cut on the video here or right here. And then keep the sound
1:08:311 hora, 8 minutos y 31 segundosof the door closing. All right. So, prompt 21A completed. Now, we're moving on to the prompt 21B.
1:08:381 hora, 8 minutos y 38 segundosUh, so we here we have uh him turning on the lamp and then pushing on the photo wall.
1:08:461 hora, 8 minutos y 46 segundosLet me see. Roco's hand posts the chain on the side lamp. Is that in the script?
1:08:531 hora, 8 minutos y 53 segundosOh yeah, he turns on a old lamp.
1:08:561 hora, 8 minutos y 56 segundosI really like the vibe here of this like cold atmosphere.
1:09:001 hora y 9 minutosI don't think I want the light turning on. I'm going to go a little off script.
1:09:061 hora, 9 minutos y 6 segundosI might have to answer for that later in front of the directors, but um I'm making my own director's call. Let's try
1:09:131 hora, 9 minutos y 13 segundosa shot where he doesn't turn on the lamp. [music] Um, what do we have here?
1:09:221 hora, 9 minutos y 22 segundosHe stares forward. Where is he? Where is he in the room?
1:09:321 hora, 9 minutos y 32 segundosOkay, I think with this prompt, he's already like deep in the room. Uh, but since the the music is really slow, um,
1:09:401 hora, 9 minutos y 40 segundosand we want to really feel this moment, I want to follow him like all the way through. In the last shot here, the camera was facing him.
1:09:501 hora, 9 minutos y 50 segundosSo, I think for continuity, uh, the camera should be positioned behind him so we don't have the camera the two shots clashing with each other.
1:10:011 hora, 10 minutos y 1 segundoSo in Claude for prompt 21B
1:10:081 hora, 10 minutos y 8 segundosum I want a shot behind Roco
1:10:161 hora, 10 minutos y 16 segundosas he is entering the room. The camera follows him.
1:10:241 hora, 10 minutos y 24 segundosum let's say in the first shot and then the second shot can stay the same and he doesn't turn on the lamp.
1:10:371 hora, 10 minutos y 37 segundosAll right, now we got our prompt. So 21B.
1:10:421 hora, 10 minutos y 42 segundosOh, there's a new tag. So image one is Roco. Image two is the location. What's image three?
1:10:511 hora, 10 minutos y 51 segundosExcuse me.
1:10:581 hora, 10 minutos y 58 segundosOh, the Polaroid or the photo wall.
1:11:041 hora, 11 minutos y 4 segundosThe photo wall. Okay, so this is a bit of a downside when the prompt is in. Oh, never mind. All the handles are here.
1:11:141 hora, 11 minutos y 14 segundosSo, this third one should be the photo wall. Now, before pasting in the prompt, I'm going to upload the picture of the Polaroid. Oh, sorry. Photo wall. That
1:11:221 hora, 11 minutos y 22 segundosway when I paste in the prompt, the handle gets tagged in automatically. All right, there we go. And the prompt.
1:11:311 hora, 11 minutos y 31 segundosAll right, so we're done generating one of them. We lost. I'm going to keep it in because I like to have [music] like
1:11:381 hora, 11 minutos y 38 segundosone row per badge. Uh, so if I delete this, it's going to throw me off for the next generations. [music] Let's just leave it in for now.
1:11:471 hora, 11 minutos y 47 segundosOkay, I didn't actually understand what's happening. So, he was supposed to be walking in from there.
1:11:561 hora, 11 minutos y 56 segundosOh, that's terrible.
1:11:591 hora, 11 minutos y 59 segundosOkay, they're probably all going to be the same.
1:12:101 hora, 12 minutos y 10 segundosOkay.
1:12:141 hora, 12 minutos y 14 segundosSo, the main issues here are well, first he's not walking in from the right side.
1:12:191 hora, 12 minutos y 19 segundosHe needs to be walking in from the hallway. And then the photo wall.
1:12:271 hora, 12 minutos y 27 segundosYeah, it just doesn't work. Maybe let's do one continue shot of him just walking in.
1:12:331 hora, 12 minutos y 33 segundosSo in Claude um for prompt 21B
1:12:411 hora, 12 minutos y 41 segundosI want just one continuous shot.
1:12:511 hora, 12 minutos y 51 segundosUm camera follows him from behind that he walks in.
1:13:031 hora, 13 minutos y 3 segundosUm in the current version, he is not walking in
1:13:121 hora, 13 minutos y 12 segundosfrom the right place. Maybe I'll upload the location one more time.
1:13:251 hora, 13 minutos y 25 segundosOkay. So, I need to describe that it's that hallway. Um, the hallway.
1:13:381 hora, 13 minutos y 38 segundosOh my god.
1:13:401 hora, 13 minutos y 40 segundosIt's a hallway. The whole the hallway is
1:13:481 hora, 13 minutos y 48 segundosin the top right corner of the top panel.
1:13:581 hora, 13 minutos y 58 segundosDescribe it in detail.
1:14:011 hora, 14 minutos y 1 segundoAnd the prompt needs to be walking into the room from that place.
1:14:131 hora, 14 minutos y 13 segundosThe camera follows him from behind. Very dark.
1:14:201 hora, 14 minutos y 20 segundosAll right. So, it included a new spatial layout block [music] which describes uh the layout of the room and where we want the camera to be positioned.
1:14:321 hora, 14 minutos y 32 segundosHopefully that helps. Okay. The shot is split into five shots. Is it? Walker walks to the hallway.
1:14:431 hora, 14 minutos y 43 segundosHe drifts left through the window. You stop here. What the Oh, no. It's one continuous shot.
1:14:501 hora, 14 minutos y 50 segundosIt's just describing what's happening at each phase here. So, that'll do. Let's copy that in.
1:14:581 hora, 14 minutos y 58 segundosAnd that is one long prompt. And let's try generating.
1:15:031 hora, 15 minutos y 3 segundosI'm only doing one batch here. Uh we're trying to nail the camera positioning.
1:15:071 hora, 15 minutos y 7 segundosAnd you can usually tell if it's off with just a couple generations and then you have to tweak your prompt. While we're waiting again, let's [music] read
1:15:151 hora, 15 minutos y 15 segundossome of the comments in YouTube. See what you guys are saying.
1:15:211 hora, 15 minutos y 21 segundosUnlimited credits is the only factor here. Yep, pretty much. The person on staff who recommended teaching us exactly how to use Hixel deserves a
1:15:301 hora, 15 minutos y 30 segundosraise. and get so discouraged with it and was thinking about canceling it until I figured things out because I was tired of burning through credits. Keep doing this, please. Thank you.
1:15:411 hora, 15 minutos y 41 segundosI really hope that my tutorials help you guys. Uh, if there are any things that are unclear after each video, feel free to comment. I usually go through at
1:15:501 hora, 15 minutos y 50 segundosleast in the first couple days and try to answer all of them.
1:15:531 hora, 15 minutos y 53 segundosI'm not questioning the budget because for a full VFX film like this one, it's incredibly low. But why make it in 14 days? That is nuts. [music] You can
1:16:011 hora, 16 minutos y 1 segundostill prove your point taking even 6 months and produce something really compelling and entertaining. Creativity needs time. That is true. Creativity
1:16:101 hora, 16 minutos y 10 segundosdoes need time. Uh the reason we're doing this in 14 days was because last week someone on our team had this idea
1:16:171 hora, 16 minutos y 17 segundosof making a full feature film and going to Can. So that's where the deadline of 14 days came in and that's why we had to
1:16:241 hora, 16 minutos y 24 segundosinvolve a lot of people um 15 people working on this. I know that's really low for traditional film making but um
1:16:331 hora, 16 minutos y 33 segundosfor AI production usually you only work in teams of three to four people max.
1:16:381 hora, 16 minutos y 38 segundos[music] Uh so this is a big experiment not only for us but I think for the entire industry. We'll see how we do.
1:16:451 hora, 16 minutos y 45 segundosOkay. I think it is working. He's in the right place. That what's that called?
1:16:491 hora, 16 minutos y 49 segundosThe spatial layout block definitely worked. Uh, let's see.
1:16:551 hora, 16 minutos y 55 segundosOh, okay. That's not supposed to happen.
1:17:011 hora, 17 minutos y 1 segundoI think it might be because in the prompt here, it's splitting the shot into [music]
1:17:071 hora, 17 minutos y 7 segundosum subshots. So, the first 3 seconds uh is defining what happens in the first 3 seconds, in the next 3 seconds, in the
1:17:141 hora, 17 minutos y 14 segundosnext 3 seconds. [music] That's why we got this weird cut. Wait, where was it?
1:17:241 hora, 17 minutos y 24 segundosRight here. Oh, okay.
1:17:361 hora, 17 minutos y 36 segundosYeah, it's happening for all of them.
1:17:401 hora, 17 minutos y 40 segundosOkay. So,
1:17:431 hora, 17 minutos y 43 segundos[clears throat]
1:17:441 hora, 17 minutos y 44 segundosOkay. Okay. So, back in cloud, I'm going to tell it to get rid of this. Maybe I'll just select this.
1:17:531 hora, 17 minutos y 53 segundosUh, defining what happens at each second is forcing [music] tense to do cuts.
1:18:041 hora, 18 minutos y 4 segundosJust define it as one continuous shot. All right. So, the prompt is fixed.
1:18:131 hora, 18 minutos y 13 segundos[music] Uh, let's try running that one more time.
1:18:301 hora, 18 minutos y 30 segundosOh, and one more thing I didn't like in these generations, aside from the cuts, [music] is that he's walking too fast. It doesn't match our mood or our music.
1:18:391 hora, 18 minutos y 39 segundosUh, so I'm probably gonna have to tweak the prompt again, but we'll see what we get first. [music] All right, let's take a look.
1:18:481 hora, 18 minutos y 48 segundosOkay, this one's not Oh, let's close. [music] It was starting good, though.
1:18:561 hora, 18 minutos y 56 segundosOkay, this is not usable. That doesn't work.
1:19:051 hora, 19 minutos y 5 segundosNope. It's still doing that cut thing.
1:19:161 hora, 19 minutos y 16 segundosOkay, this one's the closest one. The room [music] broke completely though.
1:19:211 hora, 19 minutos y 21 segundosOkay, back in cloud. Um um it needs to be
1:19:291 hora, 19 minutos y 29 segundosone continuous chart.
1:19:371 hora, 19 minutos y 37 segundosDon't split it or define different beats.
1:19:471 hora, 19 minutos y 47 segundosI think that's what's confusing.
1:19:521 hora, 19 minutos y 52 segundosHe dance also he is walking very slowly.
1:19:591 hora, 19 minutos y 59 segundosUm and we only see the full room reveal at the very end.
1:20:091 hora, 20 minutos y 9 segundosAll right. So our prompt is updated. Uh now [music] it's described as one continuous motion. That's exactly what
1:20:151 hora, 20 minutos y 15 segundoswe need. And yeah, here's slow down too.
1:20:221 hora, 20 minutos y 22 segundosLet's test it out. All right, let's see how we did.
1:20:311 hora, 20 minutos y 31 segundosOh, yeah. That's much better. The scene feels intense. This works.
1:20:401 hora, 20 minutos y 40 segundosI think I like this one. Okay, that's weird.
1:20:471 hora, 20 minutos y 47 segundos[sighs]
1:20:481 hora, 20 minutos y 48 segundosI like this like shake of the camera. side to side.
1:21:041 hora, 21 minutos y 4 segundosOkay, the room was revealed a little too early.
1:21:161 hora, 21 minutos y 16 segundosI think this might be our best bed, this one.
1:21:201 hora, 21 minutos y 20 segundosOkay, I'm going to download a couple and see how how they hold up 21B
1:21:281 hora, 21 minutos y 28 segundos1 and 21 V2.
1:21:361 hora, 21 minutos y 36 segundosOkay, I'm going to bring those two into my timeline and see how they fit in. See here.
1:21:491 hora, 21 minutos y 49 segundosAll right, that's nice.
1:21:531 hora, 21 minutos y 53 segundosOkay, the walk is too long. So, I'm probably going to take only like the first four to five seconds and then here.
1:22:091 hora, 22 minutos y 9 segundosOkay, this is probably too slow. I like the gloomy darkness here.
1:22:161 hora, 22 minutos y 16 segundosOkay, I'm going to go this one.
1:22:201 hora, 22 minutos y 20 segundosI am going to cut a little portion at the beginning.
1:22:231 hora, 22 minutos y 23 segundosUm, maybe somewhere here
1:22:311 hora, 22 minutos y 31 segundosjust because here he's already started walking so he needs to be a little further in the room. Uh, now that L cut thing that I was talking about earlier.
1:22:391 hora, 22 minutos y 39 segundosSo, right when the door closes somewhere [music] here, we could cut this
1:22:471 hora, 22 minutos y 47 segundosand do a little cut. [music] So, the sound here and then hola.
1:22:571 hora, 22 minutos y 57 segundosThere we go. Let's see how that is.
1:23:091 hora, 23 minutos y 9 segundosOkay. Okay.
1:23:181 hora, 23 minutos y 18 segundosOoh, that is nice.
1:23:281 hora, 23 minutos y 28 segundosOkay. The first of all, the room itself is wrong. So the the mirror or the window shouldn't be here. But I think if
1:23:361 hora, 23 minutos y 36 segundoswe just cut earlier before we see the room. So [music] like somewhere here uh we can introduce the room from a different
1:23:441 hora, 23 minutos y 44 segundosangle. Um get like a wide establishing shot. So still cut
1:24:011 hora, 24 minutos y 1 segundosomewhere here maybe. All right. And we move to the next shot.
1:24:071 hora, 24 minutos y 7 segundosAll right. Now in shot 21C we have the fridge note and the Polaroid pole. Now the issue is that on our timeline we haven't really introduced the room yet.
1:24:161 hora, 24 minutos y 16 segundosSo there's no white shot establishing the room. So I think we need an intermediate shot between those two uh
1:24:221 hora, 24 minutos y 22 segundosto have a nice transition. So let's do um add another shot between 21B and 21
1:24:331 hora, 24 minutos y 33 segundosC. Uh I want it should be a wide establishing shot.
1:24:451 hora, 24 minutos y 45 segundosRocco walks into the room from the hallway
1:24:541 hora, 24 minutos y 54 segundosand slowly [music] walks towards the windows. So on the left side
1:25:031 hora, 25 minutos y 3 segundosuh for the camera I want I guess first it needs to slowly pan to the left to follow Roco and then maybe
1:25:121 hora, 25 minutos y 12 segundospush in on his face uh to get that dramatic effect. So, the camera
1:25:201 hora, 25 minutos y 20 segundosfollows Roco with a pan to the left
1:25:261 hora, 25 minutos y 26 segundosand then when Roco stops, we get a slow push in on his face. Let's
1:25:351 hora, 25 minutos y 35 segundostry that. And while we're waiting for that to finish, let's see how the directors are doing.
1:25:491 hora, 25 minutos y 49 segundos[music]
1:26:001 hora y 26 minutos[music]
1:26:061 hora, 26 minutos y 6 segundosIt stopped generating. So, let's take the new prompt.
1:26:111 hora, 26 minutos y 11 segundosWe're looking for a white establishing shot. Let's plug that in.
1:26:181 hora, 26 minutos y 18 segundosWe only have two images, so I don't think we need the Polaroid attached. And let's generate.
1:26:271 hora, 26 minutos y 27 segundosAll right, we got our videos. We got the same angle in all four videos. I just pulled the one from the top panel of our uh reference sheet.
1:26:431 hora, 26 minutos y 43 segundosOh, okay. Well, that's a no. Also, the camera work is a little off.
1:26:501 hora, 26 minutos y 50 segundosIt's moving too fast. Let's see the next one.
1:27:081 hora, 27 minutos y 8 segundosOkay, there's something [music] there, but this camera work is throwing me off a lot. So, I was hoping for a pan where the camera is static. It just turns, [music] but here it's kind of like
1:27:161 hora, 27 minutos y 16 segundosgliding alongside him, which I'm not a big fan of. Let's see this one.
1:27:281 hora, 27 minutos y 28 segundosOkay, so this is a pan and then we're following him to the window.
1:27:381 hora, 27 minutos y 38 segundosI think it all happened too fast though compared [music] to his slow leisurely walk at the beginning. But I kind of like it. Let's download it and see how it holds up in the timeline.
1:27:491 hora, 27 minutos y 49 segundosI'm just going to call this 21. Was this C? C.
1:27:561 hora, 27 minutos y 56 segundosAnd let's check the last one.
1:28:071 hora, 28 minutos y 7 segundosNo. Okay. [snorts] So, right here, he went through the couch, which we cannot
1:28:141 hora, 28 minutos y 14 segundoshave. And also, he's walking way too fast. Like, he's on a mission. Like, he knows where he's going. [music] But the point is that he needs to like slowly
1:28:221 hora, 28 minutos y 22 segundoswalk in, walk around the room, think about his past. I want to see how that last shot holds up on the timeline. But my guess is we're probably going to have to iterate and do a couple more batches.
1:28:331 hora, 28 minutos y 33 segundosAll right, let's bring the shot in and let's see how it fits with the other shots.
1:28:451 hora, 28 minutos y 45 segundos[music]
1:28:461 hora, 28 minutos y 46 segundosOkay, that's too awkward and too long. Maybe let's cut it here. Try that again.
1:28:571 hora, 28 minutos y 57 segundos[music]
1:29:001 hora y 29 minutosYeah. Okay. So, here he's walking very slowly and now watch this. Boom. He's speeding.
1:29:101 hora, 29 minutos y 10 segundosHe's on a mission. All right. So, that definitely doesn't work. And one more issue is that here we're following him closely. So, the camera is pretty close
1:29:181 hora, 29 minutos y 18 segundosto him here and then his [music] legs and then the camera's behind him. But then here, it's way too far out. So,
1:29:261 hora, 29 minutos y 26 segundosit's a bit of a rough cut. [music] I think I would rather have the camera placed slightly further in, like maybe right next to the fridge. That way, we
1:29:341 hora, 29 minutos y 34 segundosget a nice pan [music] as he's slowly walking in and then follow him by the window. So, let's do just that. And
1:29:411 hora, 29 minutos y 41 segundosClaude, I'm going to say uh the shot needs to start closer to the hallway.
1:29:511 hora, 29 minutos y 51 segundosUm he walks slower.
1:29:551 hora, 29 minutos y 55 segundosUm also let's describe his emotions um to give Cance more context. So uh he's
1:30:041 hora, 30 minutos y 4 segundosvery upset and heartbroken.
1:30:131 hora, 30 minutos y 13 segundosThat might just do the trick. And while we wait, let's clean up a little. So I'm going to get rid of this failed shot. Uh
1:30:201 hora, 30 minutos y 20 segundosthese [music] two and this one right here.
1:30:261 hora, 30 minutos y 26 segundosAll right. So, it's done thinking. Uh the updates are the camera position. So, we moved closer to the hallway. And then
1:30:341 hora, 30 minutos y 34 segundoshere, I like that [music] he's defining the emotions. He it is um slower than tired, slower than exhausted.
1:30:421 hora, 30 minutos y 42 segundosSo slow it barely reads as walking. More like being dragged forward by grief.
1:30:461 hora, 30 minutos y 46 segundos[music]
1:30:461 hora, 30 minutos y 46 segundosThis is exactly the emotion that we want to convey. So, let's test the prompt and see what we get.
1:30:531 hora, 30 minutos y 53 segundosWe'll copy that over and
1:31:041 hora, 31 minutos y 4 segundospaste it right here.
1:31:071 hora, 31 minutos y 7 segundosWhile we're waiting for those videos to generate, I wanted to quickly introduce the team. Now, I know I said only 15 people, but that's 15 people generating.
Capítulo 12: Meet the Team: Specialized Roles & DOPs
1:31:151 hora, 31 minutos y 15 segundosThat's professional doss, directors, [music] but we also have screenwriters, sound designers, editors, and they've
1:31:221 hora, 31 minutos y 22 segundosbeen putting in a lot of effort, barely getting any [music] sleep. So, big shout out to them. I left their Instagram handles. Definitely go check them out.
1:31:291 hora, 31 minutos y 29 segundosAll right, our videos are ready. I can already tell that the prompt was off because the angle is wrong, but let's see if it got the rest right.
1:31:371 hora, 31 minutos y 37 segundoslike you walked in out of nowhere.
1:31:421 hora, 31 minutos y 42 segundosBut the walk itself and the camera move, I like that much better.
1:31:491 hora, 31 minutos y 49 segundosI think I would also like to have him like stop here somewhere and then turn around instead of looking out the window. He's reminiscing about their
1:31:581 hora, 31 minutos y 58 segundospast inside the [music] room, not outside. Let's see the other ones.
1:32:061 hora, 32 minutos y 6 segundosAll right, walking faster here. Not ideal.
1:32:201 hora, 32 minutos y 20 segundosOkay, we nailed the camera move. I think if we have him turn around earlier and also place the camera correctly at the beginning, this is going to be a golden shot.
1:32:321 hora, 32 minutos y 32 segundosNo. Okay.
1:32:361 hora, 32 minutos y 36 segundosAll right. So, back in Claude. Um, I want the camera placed further in, right before the fridge.
1:32:501 hora, 32 minutos y 50 segundosAnd Roco needs to stop before reaching the window.
1:32:571 hora, 32 minutos y 57 segundosHow do I describe this relative to the couch? Like halfway through reaching the couch.
1:33:031 hora, 33 minutos y 3 segundosYeah, I'm just going to skip that. um needs to stop before reaching the window and [music] walk around very slowly.
1:33:131 hora, 33 minutos y 13 segundosLet's try that.
1:33:151 hora, 33 minutos y 15 segundosAll right. So, we changed the camera position from near the hallway opening 2 m back to right beside the fridge deep inside the apartment. That's exactly
1:33:231 hora, 33 minutos y 23 segundoswhat I was looking for. Uh Ro was blocking.
1:33:271 hora, 33 minutos y 27 segundosHe stopped in the middle of the living room near the coffee table between the sofa and the window.
1:33:341 hora, 33 minutos y 34 segundosOkay, this might actually do it. Let's see. There's our new prompt.
1:33:421 hora, 33 minutos y 42 segundosOh, I lost it. Copy that over and do a new batch.
1:33:491 hora, 33 minutos y 49 segundosAll right, we got four new videos. The same issue still persists. We still have the wrong uh angle, but let's see if the rest makes sense.
1:34:131 hora, 34 minutos y 13 segundosNope. Okay, he's walking way too fast.
1:34:211 hora, 34 minutos y 21 segundosOkay, but I kind of like where he stopped.
1:34:251 hora, 34 minutos y 25 segundosI think I would rather have him turn around the other way.
1:34:301 hora, 34 minutos y 30 segundosjust to have like continuity of him walking. Let's see here.
1:34:441 hora, 34 minutos y 44 segundosNope. Okay, there's something here.
1:34:581 hora, 34 minutos y 58 segundosAll right, the camera's doing too much.
1:35:001 hora y 35 minutosAnd at the end, I don't know if you noticed, but the fridge became white.
1:35:071 hora, 35 minutos y 7 segundosActually, it's a new fridge cuz initially the fridge should have been here.
1:35:121 hora, 35 minutos y 12 segundosOkay, but we still need to fight um the angle issue. So, I'm going to try to be more specific about exactly where I want the camera placed.
1:35:221 hora, 35 minutos y 22 segundosBe super specific about where the camera starts from.
1:35:301 hora, 35 minutos y 30 segundosIt's right next to the fridge.
1:35:351 hora, 35 minutos y 35 segundosWe can barely see the fridge on the right side of the frame.
1:35:441 hora, 35 minutos y 44 segundosAnd it's deep inside the room.
1:35:491 hora, 35 minutos y 49 segundosYeah, let's try that. All right, we got the new prompt. Please work. Let's see. [music] 21C.
1:35:581 hora, 35 minutos y 58 segundosGoing to copy that over. Man, this prompt is getting longer and longer.
1:36:041 hora, 36 minutos y 4 segundosAll right, if you're new here, this is like 90% of AI film making. You just have one little
1:36:121 hora, 36 minutos y 12 segundosissue and spend 15 batches trying to fix it. All right, we're doing a lot better already with the angles. Let's see.
1:36:241 hora, 36 minutos y 24 segundosOh man, I think instead of moving the camera closer to the fridge, it moved the fridge closer to the camera.
1:36:351 hora, 36 minutos y 35 segundosThe acting is not bad, though.
1:36:401 hora, 36 minutos y 40 segundosYeah. So, the fridge is right here where it should have been down there.
1:36:471 hora, 36 minutos y 47 segundosThat's inconsistency that we just can't have.
1:36:551 hora, 36 minutos y 55 segundosOkay. [music]
1:37:201 hora, 37 minutos y 20 segundosOkay, one issue I have with his acting is that he looks more confused than [music] heartbroken.
1:37:271 hora, 37 minutos y 27 segundosIt might just be me, though. Let's see.
1:37:351 hora, 37 minutos y 35 segundosYeah, it's like he's here for the first time.
1:37:471 hora, 37 minutos y 47 segundosThis one's better. The ending feels a little off, though.
1:37:561 hora, 37 minutos y 56 segundosOh, wait. That was the wrong dash. Okay, let's try that again. Um, [music] the camera is still on the same place.
1:38:091 hora, 38 minutos y 9 segundosYou just moved [music] the fridge.
1:38:171 hora, 38 minutos y 17 segundosI need the camera to be deeper in the room.
1:38:241 hora, 38 minutos y 24 segundosUh, right next right by the hallway.
1:38:291 hora, 38 minutos y 29 segundosLet's say this is critical and broker looks more confused than heartbroken.
1:38:441 hora, 38 minutos y 44 segundosCan this is his old room so everything feels familiar
1:38:561 hora, 38 minutos y 56 segundosand he is nostalgic [music] about the past as he looks around.
1:39:071 hora, 39 minutos y 7 segundosSo, as you might have noticed with characters, I'm not describing the exact actions, but rather the emotions that they should be feeling uh when they
1:39:151 hora, 39 minutos y 15 segundosperform those actions. All right, and let's try that one more time again. 21C.
1:39:251 hora, 39 minutos y 25 segundosPaste it in and generate. I'm praying this works.
1:39:321 hora, 39 minutos y 32 segundosOh god, I completely broke the prompt. So that's not right.
1:39:411 hora, 39 minutos y 41 segundosNope. Nope.
1:39:481 hora, 39 minutos y 48 segundosWhat? Nope. Nope.
1:39:571 hora, 39 minutos y 57 segundosOkay. How do we define this? I think because it's adding on to an existing prompt, there are some things that are clashing with each other. Um, so maybe
1:40:061 hora, 40 minutos y 6 segundosI'm going to tell it to for prompt 21C scrap the whole prompt
1:40:181 hora, 40 minutos y 18 segundosand start from scratch. I need a continuous shot.
1:40:261 hora, 40 minutos y 26 segundosshot where Roco walks into the room.
1:40:351 hora, 40 minutos y 35 segundosHe's heartbroken. The place is familiar.
1:40:431 hora, 40 minutos y 43 segundosHe walks very slowly to the middle of the room.
1:40:541 hora, 40 minutos y 54 segundosstops and looks around.
1:41:001 hora y 41 minutosThe camera starts from next to the window on the right on the right.
1:41:111 hora, 41 minutos y 11 segundosum pans left following Roco and then pushes in towards him.
1:41:251 hora, 41 minutos y 25 segundosI think that might do it. Am I missing anything? Okay, let's try that.
1:41:331 hora, 41 minutos y 33 segundosAll right, I think we got the whole thing rebuilt. So, let's take that new prompt and see how that holds up.
1:41:531 hora, 41 minutos y 53 segundosAll right, our batches are ready. Let's take a look. Okay, so that's wrong immediately.
1:42:081 hora, 42 minutos y 8 segundosNope. That doesn't work.
1:42:201 hora, 42 minutos y 20 segundosWhere is he coming from?
1:42:261 hora, 42 minutos y 26 segundosMan, this is so frustrating. This is like the easiest shot ever. Ever. just one continuous pan and then push. But
1:42:341 hora, 42 minutos y 34 segundossometimes it's shots like this that will eat up the most of your time and it's just so annoying.
1:42:411 hora, 42 minutos y 41 segundosNo, no, no, wait. No, that's [music] wrong.
1:42:511 hora, 42 minutos y 51 segundosOkay, so the camera is great relative to the hallway except the rest of the room is completely broken.
1:43:101 hora, 43 minutos y 10 segundosand that's a no as well.
1:43:151 hora, 43 minutos y 15 segundosOkay, maybe let's try uploading the apartment as a reference again.
1:43:231 hora, 43 minutos y 23 segundosHere's the apartment for your reference.
1:43:291 hora, 43 minutos y 29 segundosHow do I describe the camera positioning?
1:43:361 hora, 43 minutos y 36 segundosMaybe like we'll enter into this kettle over here in the top panel.
1:43:451 hora, 43 minutos y 45 segundosThe camera should be positioned by the fridge
1:43:551 hora, 43 minutos y 55 segundosnext to the kettle way deeper in the room.
1:44:061 hora, 44 minutos y 6 segundosAll right. And there's our new prompt. Let's see how that holds up. So 21 C.
1:44:161 hora, 44 minutos y 16 segundosCopy that in and run.
1:44:241 hora, 44 minutos y 24 segundosLet's do two batches again.
1:44:261 hora, 44 minutos y 26 segundosI'm actually going to crash out if this doesn't work, please. All right, the videos are ready. Let's take a look.
1:44:351 hora, 44 minutos y 35 segundosOh man. Okay. Nope. Nope. Nope.
1:44:411 hora, 44 minutos y 41 segundosOkay. So, here he kind of understood what I meant, but instead of moving the camera further in, it just moved the fridge closer to us.
1:44:521 hora, 44 minutos y 52 segundosThis just didn't work. The same issue here.
1:44:581 hora, 44 minutos y 58 segundosThis is almost right except he needs to walk out of there and the camera needs to be further in.
1:45:041 hora, 45 minutos y 4 segundosNo, that's it.
1:45:081 hora, 45 minutos y 8 segundosOh man, this is going to be day two of me losing my mind on YouTube. Okay, let's try
1:45:151 hora, 45 minutos y 15 segundosediting the prompt again. Maybe instead of anchoring to the props on the side.
1:45:231 hora, 45 minutos y 23 segundosOkay, we'll be editing this prompt. So maybe anchor to the hallway.
1:45:291 hora, 45 minutos y 29 segundosSo instead of anchoring the camera
1:45:371 hora, 45 minutos y 37 segundosto the side, it should be
1:45:421 hora, 45 minutos y 42 segundosfacing the hallway. Really close the dark hallway. Really close slowly
1:45:521 hora, 45 minutos y 52 segundosrevealing Roco.
1:45:561 hora, 45 minutos y 56 segundosAnd in that case, instead of doing a pan, let's do um camera
1:46:021 hora, 46 minutos y 2 segundosuh follows him and pushes in.
1:46:101 hora, 46 minutos y 10 segundosI mean, the rest looked good. Like, he did walk out somewhat slowly walking around the room.
1:46:191 hora, 46 minutos y 19 segundosIt's just the camera positioning that we can't get right. Let's try that.
1:46:251 hora, 46 minutos y 25 segundosActually, I'm going to edit this a little bit more. So, instead of just the dark hallway really close,
1:46:331 hora, 46 minutos y 33 segundoslet's say it starts with a focus on the dark hallway.
1:46:491 hora, 46 minutos y 49 segundosand let's do parallel tracking. That might work for us.
1:46:581 hora, 46 minutos y 58 segundosSo, while Cloud is thinking, I want to talk about arguably one of the most important parts of making an AI film uh post-production. So, it's fairly similar
1:47:061 hora, 47 minutos y 6 segundosto traditional film making. Uh we still need to color grade our clips, uh add sound effects where they're missing. We are taking the voices from the original
1:47:141 hora, 47 minutos y 14 segundosfootage. Um, so I guess the only difference is that instead of using filmed [music] footage, we're using generated footage. All right, so it
1:47:211 hora, 47 minutos y 21 segundosrebuilt the prompt. Let's try the new variation. We'll copy that over.
1:47:301 hora, 47 minutos y 30 segundosOh, there we go.
1:47:341 hora, 47 minutos y 34 segundosAnd run a couple more batches. Come on, man. I know you can do it. Let's see. So far, we've spent [music]
1:47:451 hora, 47 minutos y 45 segundosI said 36 videos, eight more to go. I think we're getting close to the result that I want. [music] And like I
1:47:541 hora, 47 minutos y 54 segundosmentioned in the first episode, these aren't waste. Like you've noticed, every single one of these taught me the prompts for the next one. And keep iterating and keep iterating and eventually we're going to get the shot.
1:48:041 hora, 48 minutos y 4 segundosAll right, the videos are ready. Let's take a look. No.
1:48:131 hora, 48 minutos y 13 segundosAll right. So, that's a no. No.
1:48:361 hora, 48 minutos y 36 segundosOkay, this one's close except it's coming from the other end of the hallway. So, like in the back of the room.
1:48:491 hora, 48 minutos y 49 segundosI think you got the idea. It's just having a hard time understanding which hallway we're talking about.
1:48:561 hora, 48 minutos y 56 segundosAll right. So, this is in the correct hallway is facing the wrong way. Okay, I have an [music] idea. And cloud.
1:49:031 hora, 49 minutos y 3 segundosLet's say the hallway I'm talking about
1:49:101 hora, 49 minutos y 10 segundosis in the top right corner of the reference sheet. And maybe I'll upload it one once
1:49:201 hora, 49 minutos y 20 segundosmore just so Claude understands what's happening. [music] All right, we got the new prompt. Let's test it out.
1:49:311 hora, 49 minutos y 31 segundospaste that in. Same process.
1:49:351 hora, 49 minutos y 35 segundosLet's up it. This time I'm going to do three batches.
1:49:391 hora, 49 minutos y 39 segundosWe do have 10 million credits, so let's splurge a little.
1:49:451 hora, 49 minutos y 45 segundosAll right, it's done generating. Let's take a look.
1:49:491 hora, 49 minutos y 49 segundosOkay, I already like the camera positioning much better. I would like to have it pointing that way a little more.
1:50:061 hora, 50 minutos y 6 segundosoverall like up until here. This isn't terrible. Oh, this is terrible.
1:50:191 hora, 50 minutos y 19 segundosNope. Nope. Okay. Nope. Not quite right.
1:50:291 hora, 50 minutos y 29 segundosOkay, it's finally figured out the location of the camera. Now we just have to [music] point it toward the hallway.
1:50:561 hora, 50 minutos y 56 segundosYou know what? I'm just going to batch a bunch of videos and I feel like there's something there. Um, let's try our luck.
1:51:031 hora, 51 minutos y 3 segundos[music] Yes, I'm running four batches.
1:51:061 hora, 51 minutos y 6 segundosThis is mostly on a hunch. A lot of people ask, "How do you when do you know when to keep batching and when to tweak
1:51:131 hora, 51 minutos y 13 segundosthe prompt?" [music] Uh, there are a couple iterations here where which I like this one here.
1:51:211 hora, 51 minutos y 21 segundosIt's not bad. It's starting from the correct position.
1:51:271 hora, 51 minutos y 27 segundosIt's just the ending I'm not a big fan of. I think because in the next scene we need to have him work with the fridge.
1:51:351 hora, 51 minutos y 35 segundosHe needs to be closer to the center.
1:51:371 hora, 51 minutos y 37 segundosActually, the camera work isn't terrible. Going to run a few more batches and if we don't get a better result, I might just use this. Okay, I already like the angle in this one.
1:51:521 hora, 51 minutos y 52 segundosYeah, that's pretty good.
1:52:001 hora y 52 minutosWhere are you going? Hold on.
1:52:071 hora, 52 minutos y 7 segundosI think maybe like up to this point and then we cut on the next shot towards the fridge. This might work for us. Let's take this.
1:52:171 hora, 52 minutos y 17 segundosUm, was this 21C? Uh, first attempt. See?
1:52:261 hora, 52 minutos y 26 segundosAll right. Going to bring that over to my timeline.
1:52:431 hora, 52 minutos y 43 segundosDoes that work?
1:52:571 hora, 52 minutos y 57 segundos[music]
1:53:041 hora, 53 minutos y 4 segundosOkay. Looks around.
1:53:081 hora, 53 minutos y 8 segundosCut maybe a little earlier
1:53:131 hora, 53 minutos y 13 segundoslike when he looks at the fridge right here.
1:53:221 hora, 53 minutos y 22 segundosThere we go. I think that should work.
1:53:311 hora, 53 minutos y 31 segundosAll right. Yeah, we spent quite a bit of time on the shot, so I'm going to move on. U if the editors don't like them, we might have to regenerate it, but for now, this will do. All right, let's see.
1:53:411 hora, 53 minutos y 41 segundosSo, on the single shot, we ended up spending
1:53:561 hora, 53 minutos y 56 segundos72 generations. Isn't that crazy for just 10 seconds of footage? All right, so the
1:54:051 hora, 54 minutos y 5 segundosnext shot, prompt 21D, the fridge note, and the Polaroid pole. So yeah, we're going to need to attach the reference of
1:54:121 hora, 54 minutos y 12 segundosPolaroid and [music] copy this prompt. Bring that in.
1:54:201 hora, 54 minutos y 20 segundosThere's our Polaroid.
1:54:241 hora, 54 minutos y 24 segundosSometimes when you add the image after the prompt was already uh inserted, [music] the reference isn't going to get tagged. So just paste the prompt again and it's solved. Uh and let's run it.
1:54:381 hora, 54 minutos y 38 segundosAll right, let's see what we got.
1:54:461 hora, 54 minutos y 46 segundosWhy are they frozen? The text broke a little bit.
1:54:571 hora, 54 minutos y 57 segundosOkay, so the video feels a little soulless.
1:55:011 hora, 55 minutos y 1 segundoUh, and also this is going to be quite a rough cut.
1:55:071 hora, 55 minutos y 7 segundoslike he only turns here and then immediately he's reaching for something. So, this one's a no for us.
1:55:161 hora, 55 minutos y 16 segundosThe lighting is terrible here. And the composition, too. Like, we have two fridges.
1:55:231 hora, 55 minutos y 23 segundosOkay.
1:55:361 hora, 55 minutos y 36 segundosYeah. So, based on our last shot, sorry, here he turns. And now I think it
1:55:441 hora, 55 minutos y 44 segundoswould make more sense for us to introduce the fridge first. So, maybe do a close-up like this. Um, but I'd like
1:55:511 hora, 55 minutos y 51 segundosto have more Polaroids up. Uh, none of them repeating. So, I'm going to attach the photo wall to grab the Polaroids
1:55:591 hora, 55 minutos y 59 segundosfrom um the Polaroid itself. [music] And maybe to keep it consistent, let's get a
1:56:051 hora, 56 minutos y 5 segundoskey frame of just the fridge itself. Um, for that back in Claude, I'm going to
1:56:121 hora, 56 minutos y 12 segundosupload the location once again. And then [music] say I want a closeup of the
1:56:211 hora, 56 minutos y 21 segundosfridge covered with Polaroids.
1:56:301 hora, 56 minutos y 30 segundosLet's upload the photo wall from this photo wall.
1:56:391 hora, 56 minutos y 39 segundosBoth will be attached as reference.
1:56:441 hora, 56 minutos y 44 segundosGive me the prompt for that.
1:56:521 hora, 56 minutos y 52 segundosOh, and I also want to make sure that I'm saying it's for an image.
1:57:011 hora, 57 minutos y 1 segundojust so it doesn't give us another uh seed dance prompt. All right, let's grab the prompt.
1:57:081 hora, 57 minutos y 8 segundosI'm going to do image. Uh I'm going to keep just the photo wall and the Polaroid. Okay, because I removed one of
1:57:171 hora, 57 minutos y 17 segundosthe references, the tagging system here broke. Uh so I'm going to just repaste the problem once again.
1:57:241 hora, 57 minutos y 24 segundosFridge kitchen reference. Yeah, that makes sense. Oh, and here we want to have the photo wall.
1:57:331 hora, 57 minutos y 33 segundosOh, darn it.
1:57:351 hora, 57 minutos y 35 segundosOkay, I'm going to tweak the prompt once again. I want to make sure that the Polaroid uh from their anniversary is also on the fridge.
1:57:451 hora, 57 minutos y 45 segundosSo, add that in the fridge as well.
1:57:551 hora, 57 minutos y 55 segundosSo there will be three references.
1:58:001 hora y 58 minutosAll right. Then let's take that prompt and change it. Well, first we're going to upload the Polaroid.
1:58:071 hora, 58 minutos y 7 segundosAnd now we're going to change the prompt. Got all the references. And let's do a couple badges. Let's see.
1:58:181 hora, 58 minutos y 18 segundosThese are not bad, but I I'm not a big fan of the close-up.
1:58:241 hora, 58 minutos y 24 segundosI think for the video we're going to do a close-up. Uh, but just for the prop, let's do a slightly wider shot. Uh,
1:58:301 hora, 58 minutos y 30 segundosmaybe just the top half. So, I want a wider shot.
1:58:371 hora, 58 minutos y 37 segundosUm, primarily the top half.
1:58:461 hora, 58 minutos y 46 segundosI mean, the images look chaotic, but okay. I think I want the the node to stand out a little more. So,
1:58:541 hora, 58 minutos y 54 segundosI'm going to make it blue again. I know we created a separate prop sheet for it earlier, but I think banana should be able to handle it even without the
1:59:031 hora, 59 minutos y 3 segundosreference. So, make the sticking out blue.
1:59:151 hora, 59 minutos y 15 segundosI'm going a few more batches in 16 by9 just to get to capture more of the fridge.
1:59:341 hora, 59 minutos y 34 segundosGenerating images is much cheaper. So, I'm going to do a lot of batches here and pick the ones that I like the most.
1:59:431 hora, 59 minutos y 43 segundosIf your images look sloppy or the lighting is off, Cance has a tendency to grab those imperfections and add them to the video. So, we really want to make
1:59:511 hora, 59 minutos y 51 segundossure that the images are perfect. That way, we don't have to waste too many credits on the videos. All right. So, here's the footage that I ended up
1:59:591 hora, 59 minutos y 59 segundoslooking. And this one right here, I'm going to upload that, the photo wall, and also the Polaroid itself. Oh god.
2:00:082 horas y 8 segundosThere we go. So, there's going to be five references.
2:00:122 horas y 12 segundosUh, Broco, the location, the fridge, the photo wall, and the Polaroid. I'm uploading these separately. That way,
2:00:202 horas y 20 segundosuh, when we zoom in and [music] do an extreme close-up, everything stays consistent. I'll be uploading
2:00:272 horas y 27 segundosthese images for the next shot, which is for 21E.
2:00:352 horas y 35 segundosUm, [music] so Roco location,
2:00:432 horas y 43 segundosphoto wall, Polaroid, and the fridge, and that border.
2:00:522 horas y 52 segundosUm, for that shot, I want an extreme close-up
2:01:032 horas, 1 minuto y 3 segundoson the fridge.
2:01:082 horas, 1 minuto y 8 segundosUm, the camera moves slowly
2:01:172 horas, 1 minuto y 17 segundosrevealing all the images one by one.
2:01:252 horas, 1 minuto y 25 segundosAnd Roco slowly reaches and grabs the Polaroid.
2:01:352 horas, 1 minuto y 35 segundoswith November 14.
2:01:382 horas, 1 minuto y 38 segundosOh, wait. Hold on. No, we're editing for uh prompt 21D.
2:01:432 horas, 1 minuto y 43 segundosI'm glad I caught it. Yeah, 21D. All right, now we're going to take this prompt and build our next shot.
2:01:502 horas, 1 minuto y 50 segundosOh, that's quite a long one.
2:01:542 horas, 1 minuto y 54 segundosIs it supposed to be that long? It might be all the references that we attaching.
2:01:592 horas, 1 minuto y 59 segundosAll right, let's see. Okay, so I tried running a couple batches and all of them failed. As you can see, I'm not immune to this either. So, I'm going to go back
2:02:072 horas, 2 minutos y 7 segundosto cloud and tell it uh the prompt through an NSFW [music]
2:02:152 horas, 2 minutos y 15 segundoserror. Um, fix the prompt.
2:02:212 horas, 2 minutos y 21 segundosMy guess is that [music] it's in the prompt or one of the inputs. Uh, it could also be on the provider side, but let's try changing the prompt and see if
2:02:282 horas, 2 minutos y 28 segundosthat works. All the images passed the IP check. So, I'm assuming it's the prompt.
2:02:332 horas, 2 minutos y 33 segundosUh, let's try running a new option. All right, we got the new option. Let's see if that works. Uh, was it 21D?
2:02:452 horas, 2 minutos y 45 segundosYeah. So, 21D.
2:02:472 horas, 2 minutos y 47 segundosLet's copy that over and try again. All right. So, the issue was in the prompt. Now that I changed
2:02:542 horas, 2 minutos y 54 segundosit, it's all working. So, I'm going to get rid of the failed generations. Also, uh don't worry if any of your generations fail. You don't get charged any credits for this.
2:03:042 horas, 3 minutos y 4 segundosDelete. And now, let's take a look.
2:03:112 horas, 3 minutos y 11 segundosA what is that glove was always wearing?
2:03:242 horas, 3 minutos y 24 segundosCan't know. It's supposed to be black. Let's see.
2:03:292 horas, 3 minutos y 29 segundosNo, can't have that.
2:03:422 horas, 3 minutos y 42 segundosAll right. Yeah. So, sometimes Cas does this. Um, as you can see, each frame feels cut or like delayed. Uh, this is happening because in the prompt we asked for 24 fps. So, 24 frames per second.
2:03:542 horas, 3 minutos y 54 segundos[music] But in this case, it's lower.
2:03:562 horas, 3 minutos y 56 segundosSo, like maybe 12 fps. Uh, we definitely can't use this. Check the next one.
2:04:052 horas, 4 minutos y 5 segundosOh, hello.
2:04:102 horas, 4 minutos y 10 segundosOkay, same thing is happening here. It might be something in the prom. So, we're going to have to tweak that.
2:04:232 horas, 4 minutos y 23 segundoswith the curse to look at. Okay.
2:04:272 horas, 4 minutos y 27 segundosUm the video must be 24 fps.
2:04:392 horas, 4 minutos y 39 segundosUh make sure to keep the style prefix and give you at the beginning.
2:04:482 horas, 4 minutos y 48 segundosAll right. So, that's the FPS issue. Um, aside from that, the video itself isn't great either.
2:05:022 horas, 5 minutos y 2 segundosYeah, I think I would like to have the camera positioned on the opposite side. So, on the right side from the fridge.
2:05:082 horas, 5 minutos y 8 segundosUm, currently we're going the opposite way. So, we'll need to fix that. [music] The camera moves.
2:05:192 horas, 5 minutos y 19 segundosright to left and he reaches
2:05:262 horas, 5 minutos y 26 segundosfor the Polaroid slower. All right. So, while we're waiting for Claude, I want to show you a little hack that we discovered recently.
Capítulo 13: Editing Hacks: Frame-by-Frame Continuity Fix
2:05:342 horas, 5 minutos y 34 segundosSo, I'm going to download this video. Um, let's name it failed. Just failed.
2:05:402 horas, 5 minutos y 40 segundosIt's fine. Now, I'm going to bring it to my timeline. Drop it in right here.
2:05:462 horas, 5 minutos y 46 segundosLet's move it further out.
2:05:492 horas, 5 minutos y 49 segundosSo, in this video, the issue is that the FPS aren't exactly 24. So, we're going to go through it frame by frame.
2:05:592 horas, 5 minutos y 59 segundosOkay. And right here, as you can see, both the frames are identical. So, I'm going to cut it and then delete this whole thing.
2:06:122 horas, 6 minutos y 12 segundosAnd now we're good. So we keep doing that until we find [music] frames that are doubled. So like this one right here.
2:06:242 horas, 6 minutos y 24 segundosMake a cut. Get rid of that.
2:06:372 horas, 6 minutos y 37 segundosI know this might look like a lot of effort and sometimes it is. So, only do this if one of the generations was great and the only issue is the FPS. Uh, in
2:06:452 horas, 6 minutos y 45 segundosour case, it's not. The video itself isn't fantastic. Like, if we watch here, um, the image morphs,
2:06:542 horas, 6 minutos y 54 segundosbut if this was a great shot, this is what I would do. Just go through it frame by frame, find any frames that are double like
2:07:032 horas, 7 minutos y 3 segundosthis, and then just make a cut. get rid of it [music]
2:07:092 horas, 7 minutos y 9 segundosand we're good. Now, the issue with that is that your audio track is also going
2:07:152 horas, 7 minutos y 15 segundosto get cut. So, you are going to have to lose the entire track. So, you could use this as B-roll.
2:07:422 horas, 7 minutos y 42 segundosAll right, here's the final edited video where I've cut out a bunch of frames. Let's take a look.
2:07:582 horas, 7 minutos y 58 segundosI don't know if you can tell, but like we're losing a couple frames every couple seconds. uh and it's giving that random jolt in between the frames which
2:08:062 horas, 8 minutos y 6 segundosis very unpleasant to look at and definitely we don't want that. Uh just keep in mind that you will be losing some frames which means you'll be losing
2:08:132 horas, 8 minutos y 13 segundossome seconds in your generation. Uh like here we're losing yeah about 4 seconds from the final footage. Especially if you need this for
2:08:222 horas, 8 minutos y 22 segundosB-roll now your problem is solved. All right let's move on. All right and our new prompt is also ready. So let's batch it as well. That was prompt 21D.
2:08:342 horas, 8 minutos y 34 segundos[music] Copy that over. There we go. All right. And both batches are ready. Let's see what we got. [music]
2:08:432 horas, 8 minutos y 43 segundosOoh, it's not bad. What does that move or am I tripping?
2:08:532 horas, 8 minutos y 53 segundosYeah, that moved down a little bit.
2:08:552 horas, 8 minutos y 55 segundos[music]
2:08:572 horas, 8 minutos y 57 segundosAnd wrong picture. Pretty close, but again, wrong picture. I think this one. Yeah.
2:09:092 horas, 9 minutos y 9 segundosOkay. Random pupil and wrong picture
2:09:152 horas, 9 minutos y 15 segundos[music]
2:09:172 horas, 9 minutos y 17 segundosagain. Random pupil. Wrong picture. So, we do need the photo wall. [music] Okay, this is pretty close. Some of the
2:09:242 horas, 9 minutos y 24 segundosfaces broke. And again, the wrong Polaroid. Am I touching the right one? Yeah. Okay.
2:09:382 horas, 9 minutos y 38 segundosIt's wrong again. Okay. Well, that broke completely.
2:09:582 horas, 9 minutos y 58 segundosOkay, he reaches for the Polaroid [music] 28 and I'd rather have him use his right hand,
2:10:062 horas, 10 minutos y 6 segundosbut the wrist wasn't bad. So, I think we're going to just batch this, tweak it slightly so he reaches
2:10:142 horas, 10 minutos y 14 segundosfor the Polaroid with his right hand.
2:10:192 horas, 10 minutos y 19 segundosUm, he does it as soon as the camera reaches that Polaroid.
2:10:292 horas, 10 minutos y 29 segundosAlso, with a lot of these, I noticed that uh he's reaching for the wrong Polaroid uh of the four of them together. Well,
2:10:382 horas, 10 minutos y 38 segundosnot in this one, but here it's four people. So, it might be that the prompt is describing four
2:10:452 horas, 10 minutos y 45 segundospeople in the Polaroid that he needs to grab. So, I'm going to specify once more.
2:10:512 horas, 10 minutos y 51 segundosWe're going to drop in the Polaroid and say this is the Polaroid you should be grabbing.
2:11:012 horas, 11 minutos y 1 segundoIt's referenced as image 4.
2:11:072 horas, 11 minutos y 7 segundosAll right, we got the new prompt. Let's find it again. So, 21D.
2:11:122 horas, 11 minutos y 12 segundosGoing to copy that over. And this pump is getting longer and longer.
2:11:182 horas, 11 minutos y 18 segundosAll right, I'm going to do a couple batches, so maybe two. And let's see what we get.
2:11:312 horas, 11 minutos y 31 segundosAll right, I have a hunch that there's something in here. Let's have a look.
2:11:382 horas, 11 minutos y 38 segundosOkay, not bad. Not bad.
2:11:442 horas, 11 minutos y 44 segundosWhy is it this picture? Is it on the Oh, that'll do it. Okay,
2:11:572 horas, 11 minutos y 57 segundoslet's see. It's not bad.
2:12:042 horas, 12 minutos y 4 segundosOkay. Well, at this point, I don't even know what to say.
2:12:172 horas, 12 minutos y 17 segundosNope. What is going on?
2:12:382 horas, 12 minutos y 38 segundosAll right, we're losing the FPS again and the wrong picture. God damn it.
2:12:532 horas, 12 minutos y 53 segundosOh. Oh.
2:13:072 horas, 13 minutos y 7 segundosNo. Okay, let's just watch the end part. Okay. Well, that feels bizarre.
2:13:282 horas, 13 minutos y 28 segundosOh, that was the last one. Okay. Didn't quite work.
2:13:352 horas, 13 minutos y 35 segundosand coot.
2:13:392 horas, 13 minutos y 39 segundosOkay, I think it's the issue with the key frame. So, because the the anniversary Polaroid isn't on this
2:13:482 horas, 13 minutos y 48 segundosfridge, it's having a hard time understanding where to place it. So, maybe we need to explicitly tell it to add the Polaroid here somewhere and then the the hand reaches and grabs it.
2:14:002 horas y 14 minutosOr we could just try and have it reinvent. No. Yeah. Let's try this again.
2:14:082 horas, 14 minutos y 8 segundosOkay. Um, the Polaroid and image four doesn't appear
2:14:172 horas, 14 minutos y 17 segundoson the wall and image. Which one was it? Image five.
2:14:282 horas, 14 minutos y 28 segundosSo see then it has to add itself and then Ro picks it up.
2:14:422 horas, 14 minutos y 42 segundosHe's also wearing black clothes like in the character sheet.
2:14:542 horas, 14 minutos y 54 segundosOkay, I think this [music] will do it.
2:14:582 horas, 14 minutos y 58 segundosI could create a new picture of the fridge with the Polaroid on it, but because we'll be using the same fridge in the [music] next shots. Uh, since
2:15:062 horas, 15 minutos y 6 segundoshe's grabbing the Polaroid now, they can't appear in the next ones. For continuity sake, I'm just going to have Cance add it on its own. So, here's a new prompt.
2:15:182 horas, 15 minutos y 18 segundosWhere is [music] it? Oh, there we go. So, I'm going to grab it.
2:15:272 horas, 15 minutos y 27 segundosand try a couple more batches.
2:15:382 horas, 15 minutos y 38 segundosAll right, let's see what we got. Okay, starting strong.
2:15:442 horas, 15 minutos y 44 segundosOkay, the note is broken a little bit and the wrong picture again.
2:15:512 horas, 15 minutos y 51 segundosOh, wrong picture.
2:16:022 horas, 16 minutos y 2 segundosWrong picture.
2:16:132 horas, 16 minutos y 13 segundosSo close, but not quite it.
2:16:232 horas, 16 minutos y 23 segundosDude. All right. So, Sance is having a hard time understanding where this polar should be on the fridge. So, I guess I'm
2:16:302 horas, 16 minutos y 30 segundosgoing to have to add it on here myself and then try that [music] again. So,
2:16:372 horas, 16 minutos y 37 segundosover in Claw, I'm going to say I want to make an edit to the fridge.
2:16:462 horas, 16 minutos y 46 segundosUm, add the Polaroid
2:16:562 horas, 16 minutos y 56 segundoson the left hand side while keeping the rest the same.
2:17:042 horas, 17 minutos y 4 segundosAnd I'm going to upload those pictures.
2:17:062 horas, 17 minutos y 6 segundosSo, fridge port
2:17:172 horas, 17 minutos y 17 segundosAll right, let's see. All right, that is one long prompt.
2:17:272 horas, 17 minutos y 27 segundosLet's give that a go. Okay, so we need these two damage two to add a single new Polaroid.
2:17:392 horas, 17 minutos y 39 segundosYep, that makes sense.
2:17:442 horas, 17 minutos y 44 segundosOkay, I think this one. No, it doesn't work.
2:17:502 horas, 17 minutos y 50 segundosIt broke all the faces, dude. Oh, no.
2:17:592 horas, 17 minutos y 59 segundosThat's terrible.
2:18:012 horas, 18 minutos y 1 segundoUm, okay. Maybe I'm going to keep the
2:18:102 horas, 18 minutos y 10 segundos[music] prompt simple and just say add the port
2:18:182 horas, 18 minutos y 18 segundosfrom image one to the fridge.
2:18:242 horas, 18 minutos y 24 segundosImage two.
2:18:292 horas, 18 minutos y 29 segundosKeep everything else the exact same.
2:18:352 horas, 18 minutos y 35 segundosAll right, I think we're getting somewhere.
2:18:392 horas, 18 minutos y 39 segundosIt broke the faces again. So, I'm going to have to add the photo wall separately so that I can keep um the existing
2:18:462 horas, 18 minutos y 46 segundospolaroids on it intact. Actually, let me try GPT image here.
2:18:522 horas, 18 minutos y 52 segundosIt's actually pretty good at making edits [music] to an existing image. So, it might work here.
2:19:012 horas, 19 minutos y 1 segundoAll right. It just didn't add it here.
2:19:082 horas, 19 minutos y 8 segundosOoh. Ooh.
2:19:112 horas, 19 minutos y 11 segundosOkay. The faces broke a little bit, but Cedas might be able to handle this if we add the Polaroid as well. So, you know what? I'm going to try this.
2:19:242 horas, 19 minutos y 24 segundosAll right. Let's try this one again. Except now we add the new fridge.
2:19:332 horas, 19 minutos y 33 segundosSo, this one here.
2:19:382 horas, 19 minutos y 38 segundosAnd let's give that a go. Okay, these look promising. Let's see what we got.
2:19:482 horas, 19 minutos y 48 segundosNo morphing.
2:19:542 horas, 19 minutos y 54 segundosThat fridge is very long.
2:20:012 horas, 20 minutos y 1 segundoOkay. I don't like that [music] the magnet is coming off too. So, we'll fix [snorts] that in the prompt.
2:20:232 horas, 20 minutos y 23 segundosNot quite. See?
2:20:312 horas, 20 minutos y 31 segundosOkay.
2:20:552 horas, 20 minutos y 55 segundosOkay. Okay, I want him to use his right hand. So, we're going to fix that in the prompt. See?
2:21:032 horas, 21 minutos y 3 segundosOh, hello. Okay, we're losing some frames again.
2:21:132 horas, 21 minutos y 13 segundosNope. What is that? Okay. Hello.
2:21:212 horas, 21 minutos y 21 segundosOkay, that looks promising.
2:21:252 horas, 21 minutos y 25 segundosDude,
2:21:382 horas, 21 minutos y 38 segundosgod damn it. [music]
2:22:022 horas, 22 minutos y 2 segundosWho grabs a photo like that?
2:22:062 horas, 22 minutos y 6 segundosUh well, that's bizarre.
2:22:342 horas, 22 minutos y 34 segundosOh, okay. Oh, their faces broke a little bit here.
2:22:462 horas, 22 minutos y 46 segundosGod damn it. Okay, this was very close.
2:22:532 horas, 22 minutos y 53 segundosAnd this one is not. Who is that?
2:23:012 horas, 23 minutos y 1 segundoOkay. So, the two main issues he has to grab with his right hand. Uh, and the magnet needs to stay on the fridge when
2:23:082 horas, 23 minutos y 8 segundoshe pulls it. So, maybe let's scrap the whole prompt and start over cuz I think it's getting
2:23:152 horas, 23 minutos y 15 segundosreally long and it's just overwhelming the model. So, scrap prompt 21D.
2:23:262 horas, 23 minutos y 26 segundosLet's start from scratch.
2:23:302 horas, 23 minutos y 30 segundosLet's say we're going to keep the same handles.
2:23:352 horas, 23 minutos y 35 segundosUm, the camera moves moves right to left
2:23:432 horas, 23 minutos y 43 segundosalong the fridge focusing on the image on the Polaroids along the way.
2:23:552 horas, 23 minutos y 55 segundosIt ends on the Polaroid from image 4.
2:24:062 horas, 24 minutos y 6 segundosAs soon as we reach it, Ro's hand, right hand,
2:24:162 horas, 24 minutos y 16 segundosgrabs it slowly. Actually, let's get rid of the slowly.
2:24:232 horas, 24 minutos y 23 segundosUm, what else was wrong? [music] Oh, the magnet has to stay.
2:24:322 horas, 24 minutos y 32 segundosThe magnet holding that Polaroid has to stay on the fridge.
2:24:402 horas, 24 minutos y 40 segundosLet's say Roco pulls the Polaroid down.
2:24:492 horas, 24 minutos y 49 segundosAll right, we got our new prompt. Let's have a look. Uh 21D.
2:24:552 horas, 24 minutos y 55 segundosOkay, it is still very very long. Okay, I'm going to give that a go.
2:25:062 horas, 25 minutos y 6 segundosI'm praying to the prompt gods at this point.
2:25:132 horas, 25 minutos y 13 segundosAll right, let's have a look. There's too many pictures here.
2:25:212 horas, 25 minutos y 21 segundosGot two notes.
2:25:342 horas, 25 minutos y 34 segundosAlso, why is it thumb tags and no magnets?
2:25:472 horas, 25 minutos y 47 segundosThe fridge doubled.
2:26:202 horas, 26 minutos y 20 segundosGuess we're doubled.
2:26:372 horas, 26 minutos y 37 segundosWe're losing some frames again. Like around 18 fps maybe.
2:26:432 horas, 26 minutos y 43 segundosWrong image, buddy.
2:26:482 horas, 26 minutos y 48 segundosOkay, I think we're getting pretty close with the previous badge.
2:26:542 horas, 26 minutos y 54 segundosI kind of want to just batch a ton and I feel like we're going to get there. All right, so this prompt didn't work. I think with this one,
2:27:022 horas, 27 minutos y 2 segundoswe're getting pretty close. Um, the picture's all in the right place. It's just the the moment of him grabbing it.
2:27:102 horas, 27 minutos y 10 segundosUh, maybe I'm just going to badge a 10 and hopefully we'll get something. Let's see.
2:27:192 horas, 27 minutos y 19 segundosI'm going to do four badges.
2:27:332 horas, 27 minutos y 33 segundosAll right, let's have a look. Who are those people?
2:27:422 horas, 27 minutos y 42 segundosNope. Nope.
2:27:582 horas, 27 minutos y 58 segundosI'm losing some frames here. And yeah, no.
2:28:112 horas, 28 minutos y 11 segundosOkay, this was close, but I need the right hand to pick up the Polaroid.
2:28:252 horas, 28 minutos y 25 segundosThe morphed. Yeah, can't have that.
2:28:352 horas, 28 minutos y 35 segundosWrong picture. Not quite.
2:28:512 horas, 28 minutos y 51 segundosThat was weird. Okay, we lost the magnet.
2:29:052 horas, 29 minutos y 5 segundosThis one.
2:29:082 horas, 29 minutos y 8 segundos[laughter]
2:29:112 horas, 29 minutos y 11 segundosThat [snorts] was terrible. Nope.
2:29:202 horas, 29 minutos y 20 segundosWait. This one. That's weird.
2:29:362 horas, 29 minutos y 36 segundosWait, this one's close.
2:29:392 horas, 29 minutos y 39 segundosOkay, we got some morphing at the beginning, but I think we can cut it here. Yeah, we can start here.
2:29:532 horas, 29 minutos y 53 segundosOkay, I think that will do. Let's take this one. 21D.
2:30:022 horas, 30 minutos y 2 segundosLet's just wash the other two as well.
2:30:102 horas, 30 minutos y 10 segundosOkay, that was a little weird how he touched it first and then pulled it, but overall it's not bad, I think.
2:30:282 horas, 30 minutos y 28 segundosOkay, I'm going to download both and then see how they play out on the timeline.
2:30:332 horas, 30 minutos y 33 segundosSo, 21D 2. [music] Who is that?
2:30:482 horas, 30 minutos y 48 segundosAnd they're moving. All right, let's take those two videos.
2:31:012 horas, 31 minutos y 1 segundoSo, here we can cut it.
2:31:302 horas, 31 minutos y 30 segundosHonestly, that's not bad. Okay, let's check out the second one.
2:31:512 horas, 31 minutos y 51 segundosOkay, it's a little weird where he touches it first. But overall, this isn't bad either.
2:31:592 horas, 31 minutos y 59 segundosI'm going to save both options and then send them both to our lead editor and he can make a decision uh [music] when he makes the final cut which one makes it.
2:32:072 horas, 32 minutos y 7 segundosI think this one is the winner, though.
2:32:102 horas, 32 minutos y 10 segundosAll right, let's watch that. Let's switch the whole thing one more time.
2:32:372 horas, 32 minutos y 37 segundosOkay.
2:32:402 horas, 32 minutos y 40 segundosAll
2:32:552 horas, 32 minutos y 55 segundosright, so that's shot 21D done. Onto the next one. All right, so now shot 21E. Let's see what this prompt looks like.
2:33:042 horas, 33 minutos y 4 segundosPaste that in. We need Roco the Polaroid.
2:33:102 horas, 33 minutos y 10 segundosWhat about the location and shot [music] 21E?
2:33:182 horas, 33 minutos y 18 segundosKeep the reference of the location so that we keep the same style.
2:33:302 horas, 33 minutos y 30 segundosOkay, we got the new prompt, but I just realized [music] that the fridge is going to be really close in the frame.
2:33:352 horas, 33 minutos y 35 segundosSo, I kind of want to upload a reference of it, too, to keep it consistent. Now, we want to make sure that we're using the fridge without the Polaroid on it.
2:33:432 horas, 33 minutos y 43 segundosSo, the initial one since he's already grabbed it. So, I'm going to say also add a reference [music] of the fridge.
2:33:572 horas, 33 minutos y 57 segundosAll right. And here's our new prompt. Let's grab it.
2:34:022 horas, 34 minutos y 2 segundos21E and let's run it.
2:34:152 horas, 34 minutos y 15 segundosOkay, I like this angle, but I want him to be doing something like you can't just have this for 15 seconds. Also,
2:34:222 horas, 34 minutos y 22 segundoshe's dripping wet. Uh maybe same angle. He's holding it by both
2:34:282 horas, 34 minutos y 28 segundoshands and then he slides his finger uh further up. Um and
2:34:362 horas, 34 minutos y 36 segundosmaybe let's do multi-shot. The second shot is a closeup of him. [music] So back in Claude uh for shot
2:34:452 horas, 34 minutos y 45 segundos21E, right? 21E.
2:34:522 horas, 34 minutos y 52 segundosThe first angle should be reverse
2:35:012 horas, 35 minutos y 1 segundoor over the shoulder shot of him holding the picture with both hands.
2:35:162 horas, 35 minutos y 16 segundosslide his thumb, his left thumb
2:35:242 horas, 35 minutos y 24 segundosum over the image um
2:35:312 horas, 35 minutos y 31 segundosand the second shot there's a closeup of him with a Polaroid visible.
2:35:452 horas, 35 minutos y 45 segundosAll right, got the new prompt. Let's test it out. So, 21E.
2:35:532 horas, 35 minutos y 53 segundosThere we go. And run it.
2:36:012 horas, 36 minutos y 1 segundoAll right, our videos are ready, but I just realized that I forgot to get rid of the photo wall. And also, the fridge that we're using is the wrong one. So,
2:36:082 horas, 36 minutos y 8 segundosas you can see here, the Polaroid is on it. So, we're going to have to regenerate with the new assets. [music] But first, let's take a look and see what it's looking like.
2:36:282 horas, 36 minutos y 28 segundosOkay, this not bad.
2:36:452 horas, 36 minutos y 45 segundosOkay, I think it's something we can work with. As long as we fix the fridge in the background, we should be okay.
2:36:552 horas, 36 minutos y 55 segundosAnd I'm going to get rid of the photo wall just so it doesn't confuse the model further.
2:37:042 horas, 37 minutos y 4 segundosOkay. So, minus the photo wall. And here we want to upload.
2:37:132 horas, 37 minutos y 13 segundosIs it this one? Yeah. So, this fridge and the prompt again.
2:37:212 horas, 37 minutos y 21 segundosAnd I'm going to do like three batches at once. All right. Now, we're ready. Let's have a look.
2:37:352 horas, 37 minutos y 35 segundosOkay. Well, the B rate itself broke a little bit. That's not what it's supposed to look like.
2:37:442 horas, 37 minutos y 44 segundosOkay. This one's closed. And now he's super far from the fridge.
2:37:552 horas, 37 minutos y 55 segundosCan't have that.
2:38:102 horas, 38 minutos y 10 segundosWhere is he looking?
2:38:132 horas, 38 minutos y 13 segundosOkay, so the shot right here, the previous one was from the side of the fridge. So, I would like to move the uh the camera on [music] the other side. Uh let's check out the other bachelors.
2:38:322 horas, 38 minutos y 32 segundosSo the image doubled. So this is a no.
2:38:362 horas, 38 minutos y 36 segundosThat's a no again. Wrong side.
2:38:562 horas, 38 minutos y 56 segundosHe picked it up over there, but now he's here, which doesn't work for us either.
2:39:172 horas, 39 minutos y 17 segundosI like the emotions here.
2:39:232 horas, 39 minutos y 23 segundosExcept I think it would make sense for him to do that to Lulu than himself.
2:39:332 horas, 39 minutos y 33 segundosThe picture broke.
2:39:432 horas, 39 minutos y 43 segundosOkay, this one has potential. All right, let's see.
2:39:532 horas, 39 minutos y 53 segundosOh, I like this angle a lot better.
2:39:572 horas, 39 minutos y 57 segundosOkay. And he's like right next to the fridge, right where he picked it up.
2:40:112 horas, 40 minutos y 11 segundosOkay, I think I'm going to go with this one.
2:40:162 horas, 40 minutos y 16 segundosUh, that was 21 D E. Okay, let's see it play out on the timeline.
2:40:542 horas, 40 minutos y 54 segundosOh yeah, that's nice. But I think we could cut it before he turns and that's when the flashbacks will start.
2:41:022 horas, 41 minutos y 2 segundosSo like right here. Okay, let's swatch the whole thing.
2:41:552 horas, 41 minutos y 55 segundosOkay. It's a tiny bit of a rough cut like right right here. So, he's pulling it to the
2:42:032 horas, 42 minutos y 3 segundosside and then here he's picking it up upwards. So, I kind of want to add an intermediate shot here. just a couple of
2:42:112 horas, 42 minutos y 11 segundosseconds. Uh maybe a wider shot from this angle like from this side of him picking
2:42:192 horas, 42 minutos y 19 segundosup the Polaroid uh before we see it up close. So let's try that.
2:42:252 horas, 42 minutos y 25 segundosSo between 21D and [music] 21E,
2:42:322 horas, 42 minutos y 32 segundosI want to add or you know what?
2:42:382 horas, 42 minutos y 38 segundosGive me a second version of 21E except at the beginning
2:42:492 horas, 42 minutos y 49 segundoshe picks up or um we get it.
2:42:542 horas, 42 minutos y 54 segundosmedium shot of him picking up
2:43:032 horas, 43 minutos y 3 segundosthe Polaroid and turning to the side.
2:43:102 horas, 43 minutos y 10 segundosUm, [music] the camera is to the left from the fridge.
2:43:182 horas, 43 minutos y 18 segundosAll right. So, we got 21E second version, which is right [music] here.
2:43:262 horas, 43 minutos y 26 segundosSo, I'm going to copy that over, paste that in, and generate once more.
2:43:352 horas, 43 minutos y 35 segundosI'll do a couple batches again.
2:43:392 horas, 43 minutos y 39 segundosSo, with this video, I'm looking for a three shot. In the first one, he picks it up from the side. We get a medium shot. Uh, the second one is going to be
2:43:482 horas, 43 minutos y 48 segundosthe closeup of the Polaroid. And then the third one is the close-up of him. I don't like the angle at the beginning. I'd rather have him on the other side.
2:43:562 horas, 43 minutos y 56 segundosHe needs to be further in uh to the left from the fridge. No. Nope.
2:44:052 horas, 44 minutos y 5 segundosNot quite. No. No.
2:44:132 horas, 44 minutos y 13 segundosOkay, this one's better and the picture broke.
2:44:282 horas, 44 minutos y 28 segundosOkay, this one looks promising. Wait, the beginning again. Okay, I like that.
2:44:472 horas, 44 minutos y 47 segundosThat's pretty nice, actually. Let's Let's take that. [music] Uh, what do we call this? 21 E2.
Capítulo 14: Scene 21 Complete
2:45:002 horas y 45 minutosOkay. Now, on our timeline, bring that in.
2:45:192 horas, 45 minutos y 19 segundosMaybe I'll cut this a little earlier actually. Pause it and before it leaves the frame like right here.
2:45:312 horas, 45 minutos y 31 segundosOkay, that's nice. Wonderland.
2:45:452 horas, 45 minutos y 45 segundosAnd before he turns, let's watch the first one again.
2:45:582 horas, 45 minutos y 58 segundosI think I like this angle better. Let's see how it works with the rest of the clip.
2:46:232 horas, 46 minutos y 23 segundosOkay, I think we're going to need to cut this maybe here.
2:46:382 horas, 46 minutos y 38 segundosOh, that's pretty [music] nice. One more time.
2:46:482 horas, 46 minutos y 48 segundosPulls it. Picks it up. Close up. All right, that's right on money.
2:46:562 horas, 46 minutos y 56 segundosSo, here I'm going to cut this.
2:47:012 horas, 47 minutos y 1 segundoBring that down. I almost washed the whole thing together once again.
2:47:572 horas, 47 minutos y 57 segundosOkay, overall I like this a lot. A couple issues I have here. I think I want to reveal his face before we move
2:48:062 horas, 48 minutos y 6 segundoson to the next shot. So maybe up to here.
2:48:252 horas, 48 minutos y 25 segundosOkay, that's nice.
2:48:322 horas, 48 minutos y 32 segundosAnd at the end, I think I'm going to leave this out so that when he turns, that could [music] be like him thinking about the past and we can cut to the
2:48:402 horas, 48 minutos y 40 segundosflashback better. If it doesn't work well with the second scene, we can just cut it later. But for now, let's leave it in.
2:48:492 horas, 48 minutos y 49 segundosYeah, that's [music] nice. All right, I'm pretty happy with that. So, that's scene 21 done. Now, let's move on to scene 23. So, here we're back at the
2:48:582 horas, 48 minutos y 58 segundosapartment. So, this is after the flashbacks. Um, he's in the same apartment. Dark atmosphere. A tear runs
2:49:062 horas, 49 minutos y 6 segundosdown his cheek, silence. [music] He closes his eyes and breaks into sobs. So, it's again a very emotional scene.
2:49:132 horas, 49 minutos y 13 segundosIt's very important that we get it right. [music] Um, it is going to be fairly short. Um, let's see what the shot list looks like. All right. So, it's just a single shot.
2:49:242 horas, 49 minutos y 24 segundosLet's run it and see what we get. Uh we can tweak it afterwards.
2:49:292 horas, 49 minutos y 29 segundosThis is my workflow for pretty much any shots. Uh the prompts are really long and you can't really tell. Well, especially cuz it's Chinese. Uh but even
2:49:372 horas, 49 minutos y 37 segundoswith English prompts, you can't really read through all of it and understand exactly what the output is going to look like. Uh so I recommend running a couple
2:49:452 horas, 49 minutos y 45 segundosbatches, uh testing it, and then you can go from there.
2:49:512 horas, 49 minutos y 51 segundosFor the inputs, we only [music] need Roco and Polaroid. Well, that's not going to work. Uh, we also need to upload the
2:50:002 horas y 50 minutosapartment to keep the location consistent and maybe even the fridge. I'm going to drop in the apartment.
2:50:172 horas, 50 minutos y 17 segundosThe apartment needs to be tag as well. Uh, in short 23A.
2:50:292 horas, 50 minutos y 29 segundosAll right, we have our new prompt. Let's see. Should be this one.
2:50:372 horas, 50 minutos y 37 segundosGrab that.
2:50:402 horas, 50 minutos y 40 segundosI don't think we necessarily need the fridge cuz he's going to be sitting at the bottom. Um, I'm going to run one
2:50:472 horas, 50 minutos y 47 segundosoption with it and then I see how it plays out. What in the world is that?
2:50:572 horas, 50 minutos y 57 segundosOkay.
2:51:132 horas, 51 minutos y 13 segundos[snorts]
2:51:192 horas, 51 minutos y 19 segundosDude, just just look at these emotions.
2:51:272 horas, 51 minutos y 27 segundosOkay, well the polar is completely wrong.
2:51:302 horas, 51 minutos y 30 segundosAnd I think like if we have him break down right here [music] sitting by the fridge, that would hit a lot better.
2:51:432 horas, 51 minutos y 43 segundosThe emotions are fantastic though. Okay.
2:51:472 horas, 51 minutos y 47 segundosUm, let's do also something about the sliding. It
2:51:532 horas, 51 minutos y 53 segundosmight be that we're adding uh this reference image for the fridge. So, it's trying to keep that [music] same frame
2:52:012 horas, 52 minutos y 1 segundofor the first shot. So, I'm going to get rid of it. And let's say um
2:52:082 horas, 52 minutos y 8 segundosreference for the fridge will not be attached.
2:52:172 horas, 52 minutos y 17 segundosOh god. Not be attached.
2:52:212 horas, 52 minutos y 21 segundosUh he's sitting um leaning his back on the fridge.
2:52:342 horas, 52 minutos y 34 segundosshot from the left side.
2:52:392 horas, 52 minutos y 39 segundosAnd with emotions, uh, Cense does really well if you just tell it. [music] Um, Roku is very upset. But you can also add
2:52:472 horas, 52 minutos y 47 segundostiny little details. Uh, so I'm going to try something like his lower lip trembles.
2:52:562 horas, 52 minutos y 56 segundosUm, and he smashes his head backwards onto the onto the fridge.
2:53:092 horas, 53 minutos y 9 segundosNot smashes, maybe [music] hits the fridge. Let's give that a go.
2:53:182 horas, 53 minutos y 18 segundosAll right, let's try the new prompt.
2:53:222 horas, 53 minutos y 22 segundosSo, 23A We copy that over. Paste that in.
2:53:312 horas, 53 minutos y 31 segundosAll right, we have three references. All good. And let's do a bunch of like three batches. All right, what do we have
2:53:382 horas, 53 minutos y 38 segundoshere? So,
2:53:442 horas, 53 minutos y 44 segundos[snorts]
2:53:462 horas, 53 minutos y 46 segundos[laughter]
2:53:562 horas, 53 minutos y 56 segundosOkay. Well, the location [music] is wrong. So, that's a no. Same here.
2:54:082 horas, 54 minutos y 8 segundosOkay.
2:54:122 horas, 54 minutos y 12 segundosYeah, we're going to have to do something about his positioning. So, we'll tweak the prompt again.
2:54:342 horas, 54 minutos y 34 segundos[laughter and snorts]
2:54:372 horas, 54 minutos y 37 segundosOkay, this is better.
2:54:442 horas, 54 minutos y 44 segundos[laughter]
2:54:482 horas, 54 minutos y 48 segundosI like the camera pulling out. [music]
2:54:552 horas, 54 minutos y 55 segundos[laughter]
2:54:562 horas, 54 minutos y 56 segundosClaude added this on its own, but I really like it. It's like we're pulling back away from these memories and
2:55:032 horas, 55 minutos y 3 segundosletting them settle and land, if that makes sense. Um, definitely keeping that camera moved.
2:55:122 horas, 55 minutos y 12 segundosLet's see. Okay, we'll [music] tweak the prompt.
2:55:182 horas, 55 minutos y 18 segundosSo, again, mention that the camera is on the left side [music] of the fridge.
2:55:292 horas, 55 minutos y 29 segundosWhat else is wrong? Where was it? before.
2:55:392 horas, 55 minutos y 39 segundosAlso, this cut here.
2:55:432 horas, 55 minutos y 43 segundosI think it would be nice to have like add a cut but from a different angle.
2:55:492 horas, 55 minutos y 49 segundosSo, maybe
2:55:502 horas, 55 minutos y 50 segundos[laughter]
2:55:522 horas, 55 minutos y 52 segundoshe leans his head down and then at that moment we cut [music] to a different shot. Um, but I don't want to cram it into one prompt here.
2:56:002 horas y 56 minutosSo, we're just going to do a separate prompt for the second shot. All right. And let's try that one more time.
2:56:172 horas, 56 minutos y 17 segundosAnd I'll do four batches this time. All right, let's have a look.
2:56:342 horas, 56 minutos y 34 segundos[laughter]
2:56:362 horas, 56 minutos y 36 segundosOkay, the location was wrong [music] again.
2:56:402 horas, 56 minutos y 40 segundos[snorts]
2:56:432 horas, 56 minutos y 43 segundosI'm down.
2:57:012 horas, 57 minutos y 1 segundoOkay, this [music] is close but not quite it. Okay, the image is broken.
2:57:102 horas, 57 minutos y 10 segundosWrong side. Oh man.
2:57:162 horas, 57 minutos y 16 segundos[laughter]
2:57:182 horas, 57 minutos y 18 segundosOkay, lost me there.
2:57:432 horas, 57 minutos y 43 segundosHey, hey, hey.
2:57:522 horas, 57 minutos y 52 segundosOh, I like that.
2:57:562 horas, 57 minutos y 56 segundos[laughter]
2:57:582 horas, 57 minutos y 58 segundosOkay, it added music in the background even though the prompt specifically asked not to, but I think we can work with that. Like, we only need the sound
2:58:062 horas, 58 minutos y 6 segundosof him right here.
2:58:162 horas, 58 minutos y 16 segundos[laughter]
2:58:182 horas, 58 minutos y 18 segundosOkay, this is a great shot. I think I'm taking [music] this.
2:58:252 horas, 58 minutos y 25 segundosUh, this is 23A.
2:58:382 horas, 58 minutos y 38 segundosAnd you're going to tell me AI emotions aren't real? I mean, how could you not feel that? [laughter]
2:58:482 horas, 58 minutos y 48 segundosAll right, let's bring it to our timeline. [music] So, 23A.
2:58:542 horas, 58 minutos y 54 segundosI'm going to leave a little gap for [music] scene 22.
2:59:112 horas, 59 minutos y 11 segundos[snorts]
2:59:142 horas, 59 minutos y 14 segundosOkay, that works. We might cut it like before the camera moves back, but the beginning is great. So, let's keep it for now. And [music] now 23B. All right.
2:59:252 horas, 59 minutos y 25 segundosSo, for shot 23B, I'm going to say I also want shot 23B.
2:59:342 horas, 59 minutos y 34 segundosNow, for this, I want the camera to be on the other side of the room. So, on the right side. Uh, and I want to give a little beat for him to completely break
2:59:432 horas, 59 minutos y 43 segundosdown. Like, he looks at the picture, [music] sobs a little bit, and then just curls up and starts crying. And then we're going to pull the camera back. Uh,
2:59:512 horas, 59 minutos y 51 segundosthis is a pretty common technique in cinematography where it's like you're leaving the character alone, giving them some space to really feel their
2:59:592 horas, 59 minutos y 59 segundosemotions. So let's try [music] to convey that through the generation. So I'm going to say the camera
3:00:083 horas y 8 segundosis now on the right side.
3:00:153 horas y 15 segundosIt pulls back. Actually it starts with a closeup on him.
3:00:263 horas y 26 segundosRoco sobs and then completely breaks down and curls up.
3:00:383 horas y 38 segundosAs he does so, the camera pulls back.
3:00:483 horas y 48 segundosYeah, that should be good. All right, so now shot 23B. Let's copy it over.
3:01:003 horas y 1 minutoand see what we get. All right, let's have a look.
3:01:203 horas, 1 minuto y 20 segundosOkay, not quite it. Don't we need him to be sitting already?
3:01:253 horas, 1 minuto y 25 segundos[gasps and laughter]
3:01:263 horas, 1 minuto y 26 segundosThe image is broken.
3:01:323 horas, 1 minuto y 32 segundos[laughter]
3:01:363 horas, 1 minuto y 36 segundos[gasps]
3:01:373 horas, 1 minuto y 37 segundos[laughter]
3:01:453 horas, 1 minuto y 45 segundos[laughter]
3:01:503 horas, 1 minuto y 50 segundosYeah, this one is the best one in terms of the acting. So again, the womb itself broke. Um,
3:01:593 horas, 1 minuto y 59 segundosI think we [snorts] might be able to just badge of a ton.
3:02:033 horas, 2 minutos y 3 segundos[laughter] Like the the motion is good, the actions are good. We just need to nail the the location itself. So, I'm going to do four more batches.
3:02:133 horas, 2 minutos y 13 segundosOkay, we're ready. Let's see. Nope. Nope.
3:02:243 horas, 2 minutos y 24 segundosWhy can't it handle the Polaroid properly? Okay, this is nice, but wrong angle.
3:02:353 horas, 2 minutos y 35 segundosOkay, we're killing somewhere wrong though. Not quite it.
3:02:433 horas, 2 minutos y 43 segundosThere should be a hallway here.
3:02:483 horas, 2 minutos y 48 segundos[snorts]
3:02:543 horas, 2 minutos y 54 segundosThis is kind of what we're looking for, except the Polaroid needs to be fixed.
3:03:003 horas y 3 minutos[snorts]
3:03:063 horas, 3 minutos y 6 segundosNot quite.
3:03:083 horas, 3 minutos y 8 segundosOkay. I like this one. [laughter] I think if we cut
3:03:163 horas, 3 minutos y 16 segundoslike when he's about to uh put his head down
3:03:213 horas, 3 minutos y 21 segundos[snorts]
3:03:223 horas, 3 minutos y 22 segundoslike somewhere here.
3:03:253 horas, 3 minutos y 25 segundosThis could be nice. All right, let's take this one. [snorts] Um 23 beat. Yeah.
3:03:343 horas, 3 minutos y 34 segundos[snorts] All right. And on the timeline, see
3:03:433 horas, 3 minutos y 43 segundos[music]
3:03:493 horas, 3 minutos y 49 segundoslike right here.
3:03:583 horas, 3 minutos y 58 segundosOkay. So, here I want to cut it as he brings his head down like hereish.
3:04:063 horas, 4 minutos y 6 segundosAnd then does that work?
3:04:213 horas, 4 minutos y 21 segundos[music]
3:04:233 horas, 4 minutos y 23 segundosI think it kind of works. A source of yum.
3:04:403 horas, 4 minutos y 40 segundos[music]
3:04:443 horas, 4 minutos y 44 segundosYeah, it's pretty nice. I think I'm quite happy with that.
3:04:563 horas, 4 minutos y 56 segundosYeah, nothing bothers me. I think we can work with this. [music] Okay, so that's team scene 23 complete. All right, that's day four. Let's see where we are.
Capítulo 15: Final Status: 4.4 Million Credits Spent
3:05:043 horas, 5 minutos y 4 segundosSo over the 4 days in total, the team spent 4,441,352 [music]
3:05:113 horas, 5 minutos y 11 segundoscredits, generated 48,336 images [music] and videos. That's about $260,000
3:05:183 horas, 5 minutos y 18 segundosover the 4 days. I'm beginning to think that [music] 10 millions might not be enough. During the shooting, I generated nearly 800 assets and only eight of them
3:05:273 horas, 5 minutos y 27 segundosmade the final cut. Now, it took a lot of effort. So, if you learned something new today, please give us a follow. That would mean a lot. And also, let me know in the comments if this is the kind of
3:05:353 horas, 5 minutos y 35 segundoscontent you would want to see more on the channel. Now, by episode 3, we'll have already finished the first draft of the full film, and we'll have a lot to
3:05:423 horas, 5 minutos y 42 segundos[music] share with you guys. But until then, stay tuned.
