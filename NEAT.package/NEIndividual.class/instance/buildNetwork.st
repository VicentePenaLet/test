as yet unclassified
buildNetwork
	self resetNetwork.
	connections
		do: [ :c | 
			c isEnabled
				ifTrue: [ 
					(nodes at: c in) connect: (nodes at: c out) weight: c weight.
					(nodes at: c out) increaseNumberOfInputs ] ]