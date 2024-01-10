extends Node3D

var letter = preload("res://LetterItem.tscn")
var smallparcel = preload("res://SmallParcel.tscn")
var bigparcel = preload("res://BigParcel.tscn")
var random_x
var random_z
var parcelhover = 1
var noparcel = false


# Called when the node enters the scene tree for the first time.
func _ready():
	if noparcel == false:
		randomize()
		var parcels = [letter, smallparcel, bigparcel]
		var parceltype = parcels[randi() % parcels.size()]
		var parcelspawned = parceltype.instantiate() 
		random_x = randf_range(-5,5)
		random_z = randf_range(-5,5)
		parcelspawned.global_position = Vector3(random_x, parcelhover, random_z)
		add_child(parcelspawned)
