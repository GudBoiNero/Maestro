extends SimpleProjectile

var shot_angle = 0
var s_dir

func _frame_0():
	if data and data.has("x") and data.has("y"):
		host.shot_dir_x = data.x
		host.shot_dir_y = data.y
	host.shooting_arm.frame = 0


func _frame_3():
	host.shooting_arm.show()
	host.shooting_arm.frame = 1
	shot_angle = fixed.vec_to_angle(fixed.mul(str(host.shot_dir_x), str(host.get_facing_int())), str(host.shot_dir_y))
	host.shooting_arm.rotation = lerp(host.shooting_arm.rotation, float(shot_angle)-(3 if !_previous_state_name() == state_name else 0), 0.6)

func _frame_4():
	host.shooting_arm.rotation = lerp(host.shooting_arm.rotation, float(shot_angle), 0.6)
	host.shooting_arm.frame = 2

func _frame_5():
	host.shooting_arm.frame = 3
	host.shooting_arm.rotation = lerp(host.shooting_arm.rotation, float(shot_angle), 0.6)

func _frame_10():
	host.shooting_arm.frame = 4
	host.shooting_arm.rotation = float(shot_angle)

	spawn_x_pos = abs(host.get_pos().x - host.shooting_point.global_position.x)
	spawn_y_pos = host.shooting_point.global_position.y

func _exit():
	host.shooting_arm.hide()
