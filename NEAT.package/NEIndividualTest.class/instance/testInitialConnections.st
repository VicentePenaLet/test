tests
testInitialConnections

	| ind |
	ind := NEIndividual new.
	ind seed: 42.
	self assert: ind numberOfConnections equals: 0.
	ind addInputNode.
	self assert: ind numberOfConnections equals: 0.
	ind addInputNode.
	self assert: ind numberOfConnections equals: 0.
	self assert: ind numberOfInputs equals: 2.
	self assert: ind numberOfOutputs equals: 0.
	
	ind addOutputNode.
	self assert: ind numberOfInputs equals: 2.
	self assert: ind numberOfConnections equals: 0.
	self assert: ind numberOfOutputs equals: 1.