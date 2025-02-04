Previous Page [https://hanover-cs.github.io/HC25-Harrison-Hallett-Senior-Project/tutorial/introduction](https://hanover-cs.github.io/HC25-Harrison-Hallett-Senior-Project/tutorial/introduction)

## Setup
The first thing we need to do is add our assets into our file structure. To do this just find your project in your file structure and add your asset files to your project. Then back in godot you should see your assets in the bottom left corner. Create a new folder named assets, and move your files into there.

The second thing we need to do it create a new _2D node_ that will act as our root node for this simple tutorial. Rename this node _"Room"_
![tutorial_1]([docs/tutorial/assets/images/tutorial_1.png](https://github.com/Hanover-CS/HC25-Harrison-Hallett-Senior-Project/blob/main/docs/tutorial/assets/images/tutorial_1.png) "tutorial_1")

Then we create a _Tilemap_ inside the _"Room" node_. Then, after selecting our new _tilemap_, on the right side of the screen in the _Inspector_ next to _Tileset_ open the dropdown menu that says empty. Here we want to add new _tileset_. After creating a new _tileset_ we want to find the tileset tab at the bottom middle of the screen. After selecting _tileset_ drag your assets file into the empty box under Tiles and Patterns on the leftside of the bottom panel. It will ask if you want it to create tiles in this atlas and select yes.

Godot documentation for _Tilemaps_ and _Tilesets_:

[Tilemaps](https://docs.godotengine.org/en/latest/tutorials/2d/using_tilemaps.html)

[Tilesets](https://docs.godotengine.org/en/latest/tutorials/2d/using_tilesets.html)

## Create the Room
Now we will draw the room in our __Room__ scene. Select _tilemap_ again along the bottom of the screen, and then select the tile you want to place in the scene. Now you should be able to build you room in the middle part of the screen. I created a 10 by 10 room with black walls, and used a gray tile to represent the floor. Make sure to start at the center where the orange cross is located. If you are having trouble navigating the 2D scene view you can hold space down and right click to move around it more easily. 

## Add physics to the wall
Now we want to add collision to the walls so that they actually function as walls. To do this first we will need to select our _tilemap_ in our scene structure near the topleft of the screen. After that click on _tileset_ in the _inspector_ on the right hand of the screen. The same place where we went to create the _tileset_, but this time just select it. After selecting it a Physics Layers drop down menu should appear below the _tileset_ menu, click on it and click add layer. Then return to the _tileset_ tab of the bottom panel. Once here we want to select the __Select__ tab above where it says atlas. Then go to the drop down menu Physics, then into Physics layers. Here you should see the tile you have selected, make sure it's the one your using as the wall. Then we are going to add colision to the entire tile so our character will stop when running into the wall. This is done the same as in Godot's __My First 2D Game__ [tutorial](https://docs.godotengine.org/en/latest/getting_started/first_2d_game/05.the_main_game_scene.html#spawning-mobs). Here they use the same system to create a Path node that spawns in enemies, but you select the green icon labeled __add polygon tool__ and place 4 dots each one in one corner of your tile, rather than creating a path in the 2D workspace. 

Now that we have a room and functioning walls we will move on to the character node which will allow us to create a character and move it around in our new room.



Next Page [https://hanover-cs.github.io/HC25-Harrison-Hallett-Senior-Project/tutorial/character](https://hanover-cs.github.io/HC25-Harrison-Hallett-Senior-Project/tutorial/character)
