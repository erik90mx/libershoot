# Copyright (c) 2015 Calinou
# This source code form is governed by the MIT license.
# See LICENSE.md for more information.

extends Spatial

func _ready():
	print("Libershoot [0.0.1]")
	set_process_input(true)

func _input(event):
	if Input.is_action_pressed("quit"):
		quit()

func quit():
	get_tree().quit()
	pass