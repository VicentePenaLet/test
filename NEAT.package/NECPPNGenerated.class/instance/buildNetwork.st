adding
buildNetwork
	| node1 node2 |
	self resetNetwork.
	connections
		do: [ :c | 
			(c isEnabled)
				ifTrue: [ (nodes at: c in) connect: (nodes at: c out) weight: (c weight).
					node1 := (nodes at: c in).
					node2 := (nodes at: c out).
					((nodes at: c in) level > (nodes at: c out) level)
						ifTrue: [(nodes at: c in) increaseNumberOfInputs ]]]