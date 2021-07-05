as yet unclassified
initialize 
   n := 4.
	position:= (0 @ 0).
	maxSpeed := 100.
	maxTicks := 1000.
	tolerance := 5.
	score := 0.
	ttot := 0.
	capturedFood := OrderedCollection new.
	positionHistory := OrderedCollection new.
	self generateInputCoordenates.
	self generateOutputCoordenates.
	
