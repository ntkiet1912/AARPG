class_name State_Idle extends State

@onready var walk: State_Walk = $"../Walk"
@onready var attack: State_Attack = $"../Attack"

## What happen when the player enters this State?
func Enter() ->void:
	player.UpdateAnimation("idle")
	pass

## What happen when the player exits this State?
func Exit() ->void:
	pass

## What happens during the _process update in this state?
func Process(_delta : float ) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	player.velocity = Vector2.ZERO
	return null

## What happens during the _physics_process update in this state?
func Physics( _delta : float ) -> State:
	return null

## What happens with input events in this state?
func HandleInput( _event : InputEvent) -> State:
	
	if _event.is_action_pressed("attack") : 
		return attack
	return null
