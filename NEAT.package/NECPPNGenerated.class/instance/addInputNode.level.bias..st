adding
addInputNode: aPosition level: aLevel bias: n
	| node |
	node := NECPPNGeneratedNode new setAsInput.
	node activation: Sigmoid.
	node position: aPosition.
	node result = 0.
	node bias: n.
	self addNode: node.
	^ node