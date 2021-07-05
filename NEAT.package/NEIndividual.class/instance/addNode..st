adding
addNode: aNode
	self resetNetwork.
	self addRawNode: aNode.
	aNode id: nodes size.