tests mutation operators
testNumberOfInputs

	| ind outputNode |
	ind := NEIndividual new.
	ind seed: 42.
	ind addInputNode; addInputNode; addInputNode.
	ind addOutputNode.

	outputNode := ind outputNodes first.
	self assert: outputNode numberOfInputs isNil.
	
	ind buildNetwork.
	self assert: outputNode numberOfInputs equals: 0.
	
	NEAddConnectionMutationOperation new performOn: ind.
	NEAddConnectionMutationOperation new performOn: ind.
	NEAddConnectionMutationOperation new performOn: ind.
	NEAddConnectionMutationOperation new performOn: ind.
	
	ind buildNetwork.
	self assert: outputNode numberOfInputs equals: 3.