extends Fighter

onready var shooting_arm = $"%ShootingArm"
onready var shooting_point = $"%ShootingPoint"

onready var default_parry = preload("res://fx/ParryEffect.tscn")

var shot_dir_x = 100
var shot_dir_y = 0

func _ready():
	shooting_arm.set_material(sprite.get_material())


func spawn_particle_effect(particle_effect:PackedScene, pos:Vector2, dir = Vector2.RIGHT):
	if particle_effect == default_parry:
		particle_effect = preload("res://Maestro/characters/Maestro/particles/ParryEffect.tscn")
	.spawn_particle_effect(particle_effect, pos, dir)
