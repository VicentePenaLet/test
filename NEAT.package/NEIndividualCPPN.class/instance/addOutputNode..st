adding
addOutputNode: aPosition
	| node |
	node := NENode new setAsOutput.
	node activation: ActivationFunction allSubclasses atRandom.
	node position: aPosition.
	self addNode: node.
	^ node