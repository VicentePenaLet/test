public access
evaluate: anArray
	self
		assert: [ anArray size = (self numberOfInputs)]
		description: 'Wrong number of arguments'.
	self buildNetwork.

	"We provide 1 to the first node, which is considered as the bias node"
	self inputNodes
		with: #(1) , anArray
		do: [ :n :aValue | n evaluate: aValue ].
	^ self outputNodes collect: [ :n | n result ] as: Array