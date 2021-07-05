as yet unclassified
generateInputCoordenates
	|m angle|
	m := 0.5.
	angle := 2*(Float pi)/n.
	sensors := OrderedCollection  new.
   inputs := (1 to: n) collect: [ :i | |point x y lAngle rAngle sensor|
							x := ((i*angle) sin) * m. 
							y:= ((i*angle) cos) * m.
							lAngle := (i*angle) - (angle/2).
							rAngle := (i*angle) + (angle/2).
							lAngle := Angle bound: lAngle.
							rAngle := Angle bound: rAngle.
							point := (x @ y).
							sensor := FGSensor new.
							sensor bounds: lAngle and: rAngle.
							sensor position: point.
							sensor initialPosition: point.
							sensor agentPosition: position.
							sensors add: sensor
							]
	