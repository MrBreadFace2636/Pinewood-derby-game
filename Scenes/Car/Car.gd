extends RigidBody2D
var player_number = "1"


@onready var front_wheel_sprite = %FrontWheelSprite

@onready var rear_wheel_sprite = %RearWheelSprite

# Called when the node enters the scene tree for the first time.
func _ready():
	var body_number = Globals.player_config[player_number]["body"]
	var body_texture = Globals.body_map[str(body_number)]
	var body_sprite = Sprite2D.new()
	body_sprite.texture = body_texture
	body_sprite.scale = Vector2(10,10)
	add_child(body_sprite)
	move_child(body_sprite,0)
	
	var wheel_number = Globals.player_config[player_number]["wheel"]
	var wheel_texture = Globals.wheel_map[str(wheel_number)]
	front_wheel_sprite.texture = wheel_texture
	rear_wheel_sprite.texture = wheel_texture


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
