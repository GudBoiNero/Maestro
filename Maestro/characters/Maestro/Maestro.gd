extends Fighter

onready var shooting_arm = $"%ShootingArm"
onready var shooting_point = $"%ShootingPoint"

var shot_dir_x = 100
var shot_dir_y = 0

func _ready():
	shooting_arm.set_material(sprite.get_material())
