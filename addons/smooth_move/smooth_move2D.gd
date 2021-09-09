extends Node2D

export (NodePath) var follow_target

var target : Node2D

var gt2 : Transform2D
var gt1 : Transform2D
var gt0 : Transform2D

# Called when the node enters the scene tree for the first time.
func _ready():
	set_as_toplevel(true)
	target = get_node(follow_target)
	
	global_transform = target.global_transform
	gt0 = target.global_transform
	gt1 = target.global_transform
	gt2 = target.global_transform

func _process(_delta):
	var f = Engine.get_physics_interpolation_fraction()
	global_transform = gt2.interpolate_with(gt1, f)

func _physics_process(_delta):
	gt2 = gt1
	gt1 = gt0
	gt0 = target.global_transform
