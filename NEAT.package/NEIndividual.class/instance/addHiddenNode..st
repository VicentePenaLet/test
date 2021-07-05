adding
addHiddenNode: aPosition
	| node |
	node := NENode new setAsHidden.
	node activation: Sigmoid.
	node position: aPosition.
	node computed: false.
	self addNode: node.
	^ node