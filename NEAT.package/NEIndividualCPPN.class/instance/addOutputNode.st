adding
addOutputNode
	| node |
	node := NENode new setAsOutput.
	node activation: ActivationFunction allSubclasses atRandom.
	self addNode: node.
	^ node