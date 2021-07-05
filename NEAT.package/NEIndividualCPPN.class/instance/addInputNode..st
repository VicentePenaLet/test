adding
addInputNode: aPosition
	| node |
	node := NENode new setAsInput .
	node position: aPosition.
	self addNode: node.
	^ node