extends Button

var root

func _ready():
	root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)

var current_scene

func load_scene(var path):
	current_scene.queue_free() # Destroy the current scene
	current_scene = load(path).instance()
	root.add_child(current_scene) # And add the requested one

func _pressed():
	load_scene("res://scenes/test.xml")
