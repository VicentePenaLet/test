adding
addInputNode: aPosition level: aLevel
	| node |
	node := NECPPNGeneratedNode new setAsInput.
	node activation: Sigmoid.
	node position: aPosition.
	self addNode: node.
	^ node