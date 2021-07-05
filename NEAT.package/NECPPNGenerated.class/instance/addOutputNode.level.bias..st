adding
addOutputNode: aPosition level: aLevel bias: n
	| node |
	node := NECPPNGeneratedNode new setAsOutput: aLevel.
	node activation: Sigmoid.
	node position: aPosition.
	node bias: n.
	node result = 0.
	self addNode: node.
	^ node