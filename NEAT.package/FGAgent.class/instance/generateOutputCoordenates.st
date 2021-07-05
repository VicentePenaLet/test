as yet unclassified
generateOutputCoordenates
	|m|
	m := 2.
   outputs := (1 to: n) collect: [ :i | |point x y angle|
							angle := 2*3.14159265359/n.
							x := ((i*angle) sin) * m. 
							y:= ((i*angle) cos) * m.
							point := (x @ y)]
	