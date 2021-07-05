adding
addInputNode
	| node |
	node := NENode new setAsInput .
	self addNode: node.
	^ node