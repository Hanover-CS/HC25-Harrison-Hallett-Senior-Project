extends Node2D

func execute(s, dir = []):
	s.velocity = Vector2(0,0)
	
	if dir.has("up"):
		s.velocity.y -= 1
	if dir.has("down"):
		s.velocity.y += 1
	if dir.has("left"):
		s.velocity.x += 1
	if dir.has("right"):
		s.velocity.x -= 1
		
	if dir.size():
		s.velocity = s.velocity * s.current_speed
		s.velocity.normalized()
		s.move_and_slide()
