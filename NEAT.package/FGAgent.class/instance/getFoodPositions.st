as yet unclassified
getFoodPositions
|sensorPosition anglePosition foodPositions|
sensorPosition:= sensors collect:[:sensor| sensor position].
anglePosition := sensors collect:[:sensor| sensor minAngle].
foodPositions := OrderedCollection new.
anglePosition do: [ :angle|  foodPositions add: ((angle cos * 100 )@(angle sin * 100))].
sensorPosition do: [ :pos| |direction|
direction := pos /  ( pos squaredDistanceTo: position) sqrt.
foodPositions add: (pos + (100 * direction))].
^foodPositions 





