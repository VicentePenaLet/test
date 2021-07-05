adding
addHiddenNode: level
	| node |
	node := NENode new setAsHidden: level.
	node activation: ActivationFunction allSubclasses atRandom.
	self addNode: node.
	^ node