tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("SmoothMove2D", "Node2D", preload("smooth_move2D.gd"), preload("icon2d.png"))
	add_custom_type("SmoothMove3D", "Spatial", preload("smooth_move3D.gd"), preload("icon3d.png"))


func _exit_tree():
	remove_custom_type("SmoothMove2D")
	remove_custom_type("SmoothMove3D")
