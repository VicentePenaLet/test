running
run 
	random := Random seed: 42.
	examples:= OrderedCollection new.
	1 to: 25 do:[:unused||ex x y| 
					ex := ToyExample new.
					ex	createGrid.
					x:= (1 to: 3) atRandom: random.
					y:= (1 to: 3) atRandom: random.
					ex spawnSmall: 0 position: (Array with: x with:y). 
					examples add: ex].
 ^examples