tests
testFitnessAndMutations

	| ind |
	ind := NEIndividual new.
	ind addInputNode; addOutputNode.
	ind random: (Random seed: 42).
	self should: [ ind fitness ] raise: AssertionFailure.
	ind computeFitness: [ :i | 23 ].
	self assert: ind fitness equals: 23.
	
	NEAddConnectionMutationOperation new performOn: ind.
	self should: [ ind fitness ] raise: AssertionFailure.