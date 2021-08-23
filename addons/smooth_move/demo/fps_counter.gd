extends Control

onready var lbl_fps : Label = $ColorRect/VBoxContainer/lbl_fps

# Called when the node enters the scene tree for the first time.
func _ready():
	$ColorRect/VBoxContainer/lbl_physic_fps.text = "Physic FPS : " + str(ProjectSettings.get_setting("physics/common/physics_fps"))


func _process(delta):
	lbl_fps.text = "FPS : " + str(Engine.get_frames_per_second())
	
func _input(event):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
