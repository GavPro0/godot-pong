extends CharacterBody2D

#var speed = 400
#
#func _physics_process(_delta):
#  var direction = Vector2.ZERO
#  # Vector2(0, 0)
#
#  if Input.is_action_pressed("ui_up"):
#    # direction.y -= 1
#    direction.y -= 1 * speed
#    # direction.y -= direction * speed
#
#  if Input.is_action_pressed("ui_down"):
#    # direction.y += 1
#    direction.y += 1 * speed
#    # direction.y += direction * speed
#
#  # move_and_slide(direction * speed)
#  move_and_slide()


#const SPEED = 400.0
#
#func _physics_process(_delta):
#  var direction = Input.get_axis("ui_up", "ui_down")
#  velocity.y = direction * SPEED
#
#  move_and_slide()


#@export var speed = 400.0
#
#func _get_input():
#  var input_direction = Input.get_axis("ui_up", "ui_down")
#  velocity.y = input_direction * speed
#
#func _physics_process(_delta):
#  _get_input()
#  move_and_slide()


var speed = 400

func _physics_process(_delta):
  velocity = Vector2.ZERO
  
  if Input.is_action_pressed("ui_up"):
    velocity.y -= 1

  if Input.is_action_pressed("ui_down"):
    velocity.y += 1

  velocity = velocity.normalized() * speed
  move_and_slide()


##var speed = 50
#var speed = 10
#
#func _physics_process(_delta):
#  var direction = Vector2.ZERO
#
#  if Input.is_action_pressed("ui_up"):
#    direction.y -= 1 * speed
#
#  if Input.is_action_pressed("ui_down"):
#    direction.y += 1 * speed
#
#  move_and_collide(direction)
