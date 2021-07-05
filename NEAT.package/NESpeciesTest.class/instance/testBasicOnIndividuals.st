tests
testBasicOnIndividuals

	| r individuals i sp i2 |
	r := Random seed: 42.
	individuals := OrderedCollection new.
	
	10 timesRepeat: [ 
		i := NEIndividual new.
		i random: r.
		i addInputNode; addInputNode; addInputNode.
		i addOutputNode.
		individuals add: i.
		
		"For each individual we create 10 clones"
		10 timesRepeat: [ 
			i2 := i copy.
			NEAddNodeMutationOperation new performOn: i2.
			NEAddConnectionMutationOperation new performOn: i2.
			NEAddConnectionMutationOperation new performOn: i2.
			individuals add: i2
		].
	].

	sp := NESpeciation new.
	sp threshold: 4.
	sp process: individuals.
	self assert: sp numberOfSpecies equals: 101.
"	self assert: (sp groups allSatisfy: [ :s | s numberOfIndividuals = 10 ])"
