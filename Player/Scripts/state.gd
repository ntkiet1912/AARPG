class_name State extends Node

## Stores a reference to the player that this State belongs to 
static var player : Player
## What happen when the player enters this State?
func Enter() ->void:
	pass

## What happen when the player exits this State?
func Exit() ->void:
	pass

## What happens during the _process update in this state?
func Process(_delta : float ) -> State:
	return null

## What happens during the _physics_process update in this state?
func Physics( _delta : float ) -> State:
	return null

## What happens with input events in this state?
func HandleInput( _event : InputEvent) -> State:
	return null
