copying
spawnSmall
   |x y|
	x:= (1 to: 3) atRandom.
	y:= (1 to: 3) atRandom.
	self spawnSmall: 0 position: (Array with: x with:y). 



