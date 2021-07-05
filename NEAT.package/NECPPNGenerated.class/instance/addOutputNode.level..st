adding
addOutputNode: aPosition level: aLevel 
	| node |
	node := NECPPNGeneratedNode new setAsOutput: aLevel.
	node activation: Sigmoid.
	node position: aPosition.
	
	node result = 0.
	self addNode: node.
	^ node