adding
addHiddenNode
	| node |
	node := NENode new setAsHidden.
	node activation: ActivationFunction allSubclasses atRandom.
	self addNode: node.
	^ node