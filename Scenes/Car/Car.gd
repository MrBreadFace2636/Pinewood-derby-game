extends RigidBody2D

var player_number


@onready var front_wheel_sprite = %FrontWheelSprite

@onready var rear_wheel_sprite = %RearWheelSprite

@onready var rear_wheel_shape = %RearWheelShape

@onready var front_wheel_shape = %FrontWheelShape

@onready var front_wheel_body = $FrontWheelBody

@onready var rear_wheel_body = $RearWheelBody

# Called when the node enters the scene tree for the first time.
func _ready():
	var body_number = Globals.player_config[str(player_number)]["body"]
	var body_texture = Globals.body_map[str(body_number)]
	var body_sprite = Sprite2D.new()
	body_sprite.texture = body_texture
	body_sprite.scale = Vector2(10,10)
	add_child(body_sprite)
	move_child(body_sprite,0)
	
	var wheel_number = Globals.player_config[str(player_number)]["wheel"]
	var wheel_texture = Globals.wheel_map[str(wheel_number)]
	front_wheel_sprite.texture = wheel_texture
	rear_wheel_sprite.texture = wheel_texture
	
	var wheel_radius = Globals.radius_map[str(wheel_number)]
	front_wheel_shape.shape.radius = wheel_radius
	rear_wheel_shape.shape.radius = wheel_radius
	
	var body_mass = Globals.body_mass_map[str(body_number)]
	mass = body_mass
	
	var wheel_damp = Globals.angular_damp_map[str(wheel_number)]
	front_wheel_body.angular_damp = wheel_damp
	rear_wheel_body.angular_damp = wheel_damp
	
	var body_com = Globals.body_com_map[str(body_number)]
	center_of_mass = body_com
	
	var wheel_mass = Globals.wheel_mass_map[str(wheel_number)]
	front_wheel_body.mass = wheel_mass
	rear_wheel_body.mass = wheel_mass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
