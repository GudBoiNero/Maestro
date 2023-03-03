extends SimpleProjectile

export var static_x_dir_arrow_1 = 0
export var static_y_dir_arrow_1 = 0

export var static_x_dir_arrow_2 = 0
export var static_y_dir_arrow_2 = 0

export var static_x_dir_arrow_3 = 0
export var static_y_dir_arrow_3 = 0

var shot_angle

func _frame_0():
	host.shooting_arm.frame = 0


func _frame_3():
	host.shooting_arm.show()
	host.shooting_arm.frame = 1
	shot_angle = fixed.vec_to_angle(fixed.mul(str(static_x_dir_arrow_3), str(host.get_facing_int())), str(static_y_dir_arrow_3))
	host.shooting_arm.rotation = float(0.6)


func _exit():
	host.shooting_arm.hide()


func _tick():
	if current_tick == spawn_tick:
		host.shooting_arm.hide()
		var dir_data_1 = null
		var dir_data_2 = null
		var dir_data_3 = null
		if data != null:
			dir_data_1 = {"dir":xy_to_dir(data.x, data.y),"speed":speed,"lifetime":lifetime}
			dir_data_2 = {"dir":xy_to_dir(data.x, data.y),"speed":speed,"lifetime":lifetime}
			dir_data_3 = {"dir":xy_to_dir(data.x, data.y),"speed":speed,"lifetime":lifetime}
		else:
			dir_data_1 = {"dir":xy_to_dir(static_x_dir_arrow_1 * host.get_facing_int(), static_y_dir_arrow_1),"speed":2,"lifetime":lifetime}
			dir_data_2 = {"dir":xy_to_dir(static_x_dir_arrow_2 * host.get_facing_int(), static_y_dir_arrow_2),"speed":5,"lifetime":lifetime}
			dir_data_3 = {"dir":xy_to_dir(static_x_dir_arrow_3 * host.get_facing_int(), static_y_dir_arrow_3),"speed":2,"lifetime":lifetime}
		host.spawn_object(SimpleProjectileScene, spawn_x_pos, spawn_y_pos, true, dir_data_1)
		host.spawn_object(SimpleProjectileScene, spawn_x_pos, spawn_y_pos, true, dir_data_2)
		host.spawn_object(SimpleProjectileScene, spawn_x_pos, spawn_y_pos, true, dir_data_3)
