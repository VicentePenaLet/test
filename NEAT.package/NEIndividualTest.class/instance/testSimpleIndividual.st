tests
testSimpleIndividual

	| ind |
	ind := NEIndividual new.
	ind seed: 42.
	ind addInputNode; addInputNode; addInputNode.
	ind addOutputNode.
	
	self assert: ind numberOfConnections equals: 0.
	self assert: ind innovationNumberSequence equals: #(0)