as yet unclassified
moveTowards: point withSpeed: aSpeed
|direction newOutputs|
	direction := point /  ( point squaredDistanceTo: position) sqrt.
	position := position + (aSpeed * direction). 
	sensors do: [ :sensor| sensor moveTowards: point withSpeed: aSpeed. sensor agentPosition: position].
	newOutputs := OrderedCollection new.
	outputs do: [ :pos| newOutputs  add: (pos + (aSpeed * direction))].
	outputs := newOutputs.