copying
spawnSmall: size position: aPosition
   |values x y|
	smallSize:= size.
	values:= -1 to: 1.

	x:= aPosition at:1.
	y:= aPosition at:2.

	self putSquare: size atRow: x column: y.
	smallPosition := Array with: (values at: x) with:(values at: y).
	smallIndex:= Array with: x with: y	



