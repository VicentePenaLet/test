adding
evaluateAux: anArray
	self
		assert: [ anArray size = (self network numberOfInputs +1)]
		description: 'Wrong number of arguments'.
	self network buildNetwork.

	"We provide 1 to the first node, which is considered as the bias node"
	self network inputNodes
		with: anArray
		do: [ :n :aValue | n evaluate: aValue ].
	^ self network outputNodes collect: [ :n | n result ] as: Array