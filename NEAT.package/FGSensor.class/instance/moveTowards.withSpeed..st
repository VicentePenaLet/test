accessing
moveTowards: point withSpeed: aSpeed
|direction|
	direction := point /  ( point squaredDistanceTo: position) sqrt.
	position := position + (aSpeed * direction). 