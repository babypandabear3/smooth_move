extends Spatial

export (NodePath) var follow_target

var target : Spatial

var gt2 : Transform
var gt1 : Transform
var gt0 : Transform

# Called when the node enters the scene tree for the first time.
func _ready():
	set_as_toplevel(true)
	target = get_node_or_null(follow_target)
	if target == null:
		target = get_parent()
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
