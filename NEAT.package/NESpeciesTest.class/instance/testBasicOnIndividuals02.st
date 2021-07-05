tests
testBasicOnIndividuals02

	| r individuals i sp i2 |
	r := Random seed: 42.
	individuals := OrderedCollection new.
	
	10 timesRepeat: [ 
		i := NEIndividual new.
		i random: r.
		i addInputNode; addInputNode; addInputNode.
		i addOutputNode.
		individuals add: i.
		
		"For each individual we create 20 clones"
		20 timesRepeat: [ 
			i2 := i copy.
			NEAddNodeMutationOperation new performOn: i2.
			"NEAddNodeMutationOperation new performOn: i2."
			r next > 0.5 ifTrue: [ NEAddConnectionMutationOperation new performOn: i2 ].
			
			"NEAddConnectionMutationOperation new performOn: i2."
			individuals add: i2
		].
	].

	sp := NESpeciation new.
	sp process: individuals.
	self assert: sp numberOfSpecies equals: 87.
	"self assert: (sp groups allSatisfy: [ :s | s numberOfIndividuals = 20 ])"
