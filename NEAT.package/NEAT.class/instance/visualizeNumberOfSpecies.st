ui
visualizeNumberOfSpecies
	| g d |
	g := RTGrapher new.
	d := RTData new.
	d points: self logs.
	d y: #numberOfSpecies.
	g add: d.
	g axisX title: 'Generation'; noDecimal.
	g axisY title: '# species'.
	^ g