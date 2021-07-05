ui
visualizeFitness
	"Visualizing the max, min, and average fitness for each generation"
	| g d |
	g := RTGrapher new.
	
	"Min fitness"
	d := RTData new.
	d label: 'Minimum fitness'.
	d noDot; connectColor: Color red.
	d points: logs.
	d y: #minFitness.
	g add: d.
	
	"Max fitness"
	d := RTData new.
	d label: 'Maximum fitness'.
	d noDot; connectColor: Color blue.
	d points: logs.
	d y: #maxFitness.
	g add: d.
	
	"Average fitness"
	d := RTData new.
	d label: 'Average fitness'.
	d noDot; connectColor: Color green.
	d points: logs.
	d y: #averageFitness.
	g add: d.
	
	g axisX noDecimal; title: 'Generation'.
	g axisY title: 'Fitness'.
	g legend addText: 'Fitness evolution'.
	^ g