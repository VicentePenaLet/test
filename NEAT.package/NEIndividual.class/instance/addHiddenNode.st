adding
addHiddenNode
	| node |
	node := NENode new setAsHidden.
	node activation: Sigmoid.
	node computed: false.
	self addNode: node.
	^ node