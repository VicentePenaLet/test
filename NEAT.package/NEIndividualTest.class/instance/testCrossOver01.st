tests crossover
testCrossOver01

	| i1 i2 |
	i1 := NEIndividual new.
	i1 seed: 10.
	i1 addInputNode; addInputNode; addInputNode.
	i1 addOutputNode.
	
	i2 := NEIndividual new.
	i2 seed: 42.
	i2 addInputNode; addInputNode; addInputNode.
	i2 addOutputNode.
	
	NEAddNodeMutationOperation new performOn: i1.
	NEAddConnectionMutationOperation new performOn: i1.
	NEAddConnectionMutationOperation new performOn: i1.
	NEAddNodeMutationOperation new performOn: i2.
	NEAddNodeMutationOperation new performOn: i2.
	
	NECrossoverOperation new performOn: i1 and: i2.