tests
testBasic
	| ind |
	ind := NEIndividual new.
	self assert: ind numberOfNodesWithBias equals: 1.
	self assert: ind numberOfNodes equals: 0.
	self assert: ind numberOfInputs equals: 0.
	self assert: ind numberOfOutputs equals: 0.
	self assert: ind numberOfConnections equals: 0.