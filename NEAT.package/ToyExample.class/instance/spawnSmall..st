copying
spawnSmall: size
   |x y|
	x:= (1 to: 3) atRandom.
	y:= (1 to: 3) atRandom.
	self spawnSmall: size position: (Array with: x with:y). 



