copying
spawnSmall: size
   |x y|
	x:= (1 to: 11) atRandom.
	y:= (1 to: 11) atRandom.
	self spawnSmall: size position: (Array with: x with:y). 
