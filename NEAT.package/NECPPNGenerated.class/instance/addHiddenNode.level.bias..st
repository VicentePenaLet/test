adding
addHiddenNode: aPosition level: aLevel bias: n
	| node |
	node := NECPPNGeneratedNode new setAsHidden: aLevel.
	node activation: Sigmoid.
	node position: aPosition.
	node bias: n.
	node result = 0.
	self addNode: node.
	^ node