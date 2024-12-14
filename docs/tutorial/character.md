Previous page [https://hanover-cs.github.io/HC25-Harrison-Hallett-Senior-Project/tutorial/room](https://hanover-cs.github.io/HC25-Harrison-Hallett-Senior-Project/tutorial/room)

## Setup
For the setup for our character we need to create a _CharacterBody2D_ node as a child node of our __Room__ node, and name this new node __Character__. After that we will need to create two child nodes under our newly made __Character__ node. We will need a _Sprite2D_ node to hold the asset that will be our character, and a _CollisionShape2D_ node that will allow us to add some physics to our character. Once we have all of our nodes we have one last setup step. Go to Project -> Project Settings -> Input Map. Here we want to add input actions for up, left, down, right corresponding to w,a,s,d. To do this just type in the name of the action for example, up. Then you click on the plus next to the trash can, tap the key you want up to map to, then select ok. If you need more help on how to do this, or want information click [here](https://docs.godotengine.org/en/stable/tutorials/inputs/inputevent.html#doc-inputevent) for a link to Godot's offical documentation on the subject. 

## Character Script
Next we are going to set up a script for our Character. To do this click on the __Character__ node in the scene manager in the topleft of the screen. After that click on the paper with a green plus near the top right of the _scene manager_ part of the IDE. This allows you to add a script to a node. Click create on the pop up, and we have our script. In the script we want to remove the pre-existing code and add this code. 
~~~GDScript
extends CharacterBody2D

@export var speed = 400

func get_input():
  var input_direction = Input.get_vector("left", "right", "up", "down")
  velocity = input_direction * speed

func _physics_process(delta):
  get_input()
  move_and_slide()
~~~

This code uses `Input.get_vector` to check on the inputs from the keyboard, then we set our velocity by multiplying the input_direction by our set speed. Then the function `_physics_process` runs `get_input()` and uses it to tell the __Character__ node where to go.

## Character Sprite 
To add a sprite to our __Character__ node all we must do is select the Sprite2D child node of parent. Then find in the _inspector_ on the right hand side where it says Texture empty, and drag your 2D icon from your assets folder. I'm using the icon provided by _Godot_, but you could use any 2D image you wanted to. I also had to make the icon smaller, but before you do that make sure that you lock your __Character__ node and all of its children nodes. To do that you select all of them using shift click and click the lock button that is along the top of the _scene editor_. Thats all for the __Character__ sprite. 

## Character Collision
The final step of the tutorial is to add implement our _CollisionShape2D_ so that our __Character__ stops at the wall. To do that you will select your _ColisionShapeNode_ on the lefthand side of your screen. Then on the right hand side of your screen where it says shape and empty, select empty and pick whichever shape matches your art. For me its rectangle. Then you can adjust it to match the size of your __Character__ in the center of the screen. You can click [here](https://docs.godotengine.org/en/latest/getting_started/first_2d_game/02.player_scene.html#sprite-animation) for a officail Godot tutorial that showcases this feature. Scroll past 4 pictures and you can see it implement there. 

Next page [https://hanover-cs.github.io/HC25-Harrison-Hallett-Senior-Project/tutorial/summary](https://hanover-cs.github.io/HC25-Harrison-Hallett-Senior-Project/tutorial/summary)
