adding
addHiddenNode: aPosition level: aLevel
	| node |
	node := NECPPNGeneratedNode new setAsHidden: aLevel.
	node activation: Sigmoid.
	node position: aPosition.
	self addNode: node.
	^ node