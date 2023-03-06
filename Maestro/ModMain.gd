extends Node

### Dev Note
# - Make sure to append "res://Maestro/characters/Maestro/Maestro.tscn" to "res://Global.gd" `name_paths`

func _init(modLoader = ModLoader):
	modLoader.installScriptExtension("res://Maestro/CharacterSelect.gd")
