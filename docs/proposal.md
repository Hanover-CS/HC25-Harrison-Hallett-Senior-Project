# Roguelite Dungeon Crawler with Mouse Driven Magic

## Main Features
My goal is to create a **Roguelite Dungeon Crawler** game with an **Arx Fatalis like magic system** where the goal is to make it as far into the dungeon as possible, while collecting items and defeating enemies. The Arx Fatalis magic system is _Mouse Driven_, or in other words you draw runes with your mouse movements allowing you to cast magic. 

### Arx Fatalis Magic System 
Here is a link for a visual of the magic system in [Arx Fatalis](https://www.youtube.com/watch?v=VarOmJYCVhU) [6], Watch from 2:24 - 2:47 (Sound is not important, just the visuals.)
Watching a streamer play this game over the summer is what inspired me to try and make a game for my thesis project. I'm not sure if it's feasible for me to make this work very quickly, but I love the idea of this magic system, and would love to incorporate my own spin on it in my game. _The system works by drawing runes with your mouse, and combinations of these runes allows you to cast powerful magic._ As the game progresses you get more runes which unlock more spells. [5]

### Dungeon Crawler
I believe the term **Dungeon Crawler** came from DnD, and is in reference to a group of adventures trying to make it through a spooky dungeon and collect the loot inside, more or less. And that is going to be the main goal of my game. Delve into the dungeon and fight enemies, hopefully several differents types with a mixture of melee and ranged weapons. I hope to make the dungeon never ending with the goal being to get as far as you can, but that may be beyond my ability. Another option would be to have a big boss guarding the best loot at the end of the dungeon as a final challenge, and afterwards you could escape with your rewards. If I did implement the never ending dungeon, it would have checkpoints where you have the option to turn back or venture forth for more rewards. Also, inside the dungeon I would implement plenty of things to break such as boxes and jars. These containers would drop food for health, currency, and maybe power ups and serve as something to make the game feel less "empty."

### Roguelite
The term Roguelite originates from the 1980s game called Rogue, and the main aspects of a roguelike game are a _**dungeon crawl** through **procedually generated** levels_, **permadeath**, **turn-based**, and **grid-based** movement.[7] I hope to achieve all of these aspects in my game with the dungeon crawl, procedually generated, and permadeath being the main three I really want to implement. Turn-based is more of a toss up, because I think a real-time game like _Hades_ has a lot of fun to be had in always actively trying to dodge attacks and projectiles. Finally the last aspect, grid-based movement will be tangential on if I can make real-time work. If I can it wouldn't make a lot of sense for it to have grid-based movement, because the grid-based movement would feel restrictive. On the other hand, if it ends up being a turn-based game it would make more sense to have it be grid-based movement. It would help keep everything moving at an even pace, and overall nice and neat.

## Similar Solutions

### Rogule
_Rogule_ is a web browser **Roguelike** that has a new dungeon every single day, and you're only allowed one attempt per day. It's a very simple game in which you move around using the arrows on you keyboard as you move through the dungeon. In the dungeon you fight enemies and break things to collect items, which are used to help complete the level. [4]

A feature that I will probably try to emulate is having objects such as boxes, jars, or other breakable things that could contain items helpful for the run like food for health. One thing I do not like about this solution is that avatars for the enemies and the player are basically just moving emojis, and I'm hoping to create something a little more detailed than that. Another concept that I think is cool is as you progress through the dungeon the walls at the edge of your vision turn grey, and then they disappear. I like this because it gives a little imersion by forcing you to pay attention to where you're going, and where you've been. Also, it is a _turnbased game_, but the enemies move right after you take a step, and it felt very smooth. I didn't notice any delay before it was my turn again. I play a lot of grand strategy games where the AI has a lot more to consider, so I didn't even consider Rogule a turnbased game. I still would like to make it real-time, but this could be an easy solution if I need to downsize. [4]

### Hades
_Hades_ is a desktop application **roguelite** game where you play as the son of Hades, and your goal is to escape the underworld or Hades. _Rogule_ was a small simple web brower game, _Hades_ is quite the opposite being very popular and much more complex. I dont think i'll be able to make a game anywhere close to _Hades_, but a lot of it's features I would like to cannabalize for my own game. Such as the switch from classic roguelite **turn-based** gameplay to **real-time** gameplay. _Most importantly I want there to have some sort of progression to take the edge of the permadeath that comes with the genre_. Nothing fancy like in Hades where there are multiple different ways of powering yourself up, but more like you can spend coins to increase your overall health. I think it is this progression juxtaposed to the permadeath that really makes me enjoy modern games in this genre such as _Hades_ or _Darkest Dungeon_. [8]

## Relevent Technologies

### Godot versus Phaser
So I came down to two options for my **game engine** being **Godot**[2] or **Phaser**[9], both have their qualities but I believe **Godot** will serve my purposes better. Here's why:

Godot:
- GDScript
- Specialized 2D Workflow
- Supports Desktop applications which is my prefered form
- Free Open source game engine
- Language support for GDscript, C#, C++, and comunity support for others
- Ideal for beginners
- Built in visual editor for coding

Phaser:
- JavaScript and TypeScript
- Predominantly focused on 2D games (Which is a pro over Godot, but I think Godot makes up for it in other ways. It's not like 2D is hard in Godot it just has a wider focus)
- For webbrowser games (I believe it's possible to make a desktop application, but Godot has a built in system for deploying however you'd like)
- Open source, but some licensing fees for full functionality
- Regarded as a valuable start point for new game devs
- Code is written in scripts/ js folders

Given all of these pro's and con's I'm going with **Godot**[2] over **Phaser**[9] because it has a really nice functionality for supporting desktop games, and a chance to easily switch gears to web app if needed. Also I'm going with Godot for **GDScript** over **Javascript** which I will discuss more in the next section. Both have a 2D workflow, are largely open source, are ideal for beginners, and have a multitude of tutorials. The big things that break the tie for me are GDscript, having the built in visual editor for coding, the ability to deploy however I'd like, and being able to download Godot on steam.


### GDScript
Since I have chosen to go with Godot I will be learning **GDScript** and coding my game in it. This is a brand new language to me, but it has similarities to **python**. It was designed to be a easy to learn and use language for game design, so I'm excited to get started with it and brush up on my python along the way.[3] If I had chosen Phaser I would be working mostly in **Javascript**, which is something I've never really interacted with before.[1] One reason I'd prefer to work in **GDScript** over **Javascript** is because it has less of the curly bracket stuff going on. Godot also allows for the use of many other languages such as **C++** for some higher level things, if your willing to jump through some extra hoops.[1]

## References
[1] L. Bellbrook, "A beginners perspective of Godot vs. Phaser," arcadia.com, Apr 6th 2024. [Online]. Available: [https://aircada.com/godot-vs-phaser/](https://aircada.com/godot-vs-phaser/). Accessed[September 5th, 2024].

[2] J. Linietsky and A. Manzur and the Godot Community, "Godot Engine 4.3 documentation in English," docs.godotengine.org, 2014 - present. [Online]. Available: [https://docs.godotengine.org/en/stable/about/list_of_features.html](https://docs.godotengine.org/en/stable/about/list_of_features.html). Accessed[September 5th, 2024].

[3] J. Linietsky and A. Manzur and the Godot Community, "Godot Engine 4.3 documentation in English," docs.godotengine.org, 2014 - present. [Online]. Available: [https://docs.godotengine.org/en/stable/getting_started/introduction/learn_to_code_with_gdscript.html](https://docs.godotengine.org/en/stable/getting_started/introduction/learn_to_code_with_gdscript.html). Accesssed [Septemeber 17th].

[4] C. McCormik, "Rogule," https://rogule.com/, March 2024. [Online]. Availabe: [https://rogule.com/](https://rogule.com/). Accessed[September 5th, 2024].

[5] Steam, "Arx Fatalis," https://store.steampowered.com, Nov 12, 2002. [Online]. Available: [https://store.steampowered.com/app/1700/Arx_Fatalis/](https://store.steampowered.com/app/1700/Arx_Fatalis/). Accessed[September 2nd, 2024].

[6] A Good Thing, "Arx Fatalis | The Best Magic System," https://www.youtube.com/, Apr 27, 2022. [Online]. Available: [https://www.youtube.com/watch?v=VarOmJYCVhU](https://www.youtube.com/watch?v=VarOmJYCVhU). Accessed[September 5th, 2024]. 

[7] Wikipedia, "Roguelike," https://en.wikipedia.org, September 19th, 2024. Available: [https://en.wikipedia.org/wiki/Roguelike#Growth_of_the_rogue-lite_(2005%E2%80%93onward)](https://en.wikipedia.org/wiki/Roguelike#Growth_of_the_rogue-lite_(2005%E2%80%93onward)). Accessed[September 19th, 2024].

[8] Steam, "Hades," https://store.steampowered.com, September 17th, 2020. Available: [https://store.steampowered.com/app/1145360/Hades/](https://store.steampowered.com/app/1145360/Hades/). Accessed[September 19th, 2024].

[9] Phaser, "Phaser API Documentation," https://newdocs.phaser.io/docs, 2024. Available: [https://newdocs.phaser.io/docs/](https://newdocs.phaser.io/docs/). Accessed[September 26th, 2024].
