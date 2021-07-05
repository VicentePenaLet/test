running
run 
	examples:= OrderedCollection new.
	1 to: 25 do:[:unused||ex| 
					ex := ToyExample new.
					ex	createGrid;
						spawnSmall.].
 ^examples