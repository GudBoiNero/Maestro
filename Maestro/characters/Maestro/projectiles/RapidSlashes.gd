extends BaseProjectile

func _ready():
	var timer := Timer.new()
	timer.wait_time = 0.2
	timer.connect("timeout", self, "disable")
	add_child(timer)
	timer.start()

func on_got_parried():
	disable()
