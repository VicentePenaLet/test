initialization
buildInitialPopulation
	population := OrderedCollection new.
	populationId := 1.
	populationSize timesRepeat: [ 
		| i |
		i := individualClass new.
		i random: random.
		numberOfInputs timesRepeat: [ i addInputNode ].
		numberOfOutputs timesRepeat: [ i addOutputNode ].
		i id: populationId.
		i generation: genNumber.
		populationId := populationId +1.
		population add: i
		].
	self updateGenealogy.
	