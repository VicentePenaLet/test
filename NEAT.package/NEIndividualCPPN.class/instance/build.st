adding
build
	| b |
	network := NECPPNGenerated new.
	network nodes: OrderedCollection new.
	b := [ :position | 
	(NEIndividualCPPN  isInput: position)
		ifTrue: [ network addInputNode: position level: 0 bias: ((self evaluatePosition: position and: #(0 0 0)) at: 2)].
	(NEIndividualCPPN isHidden: position)
		ifTrue: [ network addHiddenNode: position level: ((position at: 3)+5) bias: ((self evaluatePosition: position and: #(0 0 0))at:2)].
	(NEIndividualCPPN isOutput: position)
		ifTrue: [ network addOutputNode: position level: 100 bias: ((self evaluatePosition: position and: #(0 0 0))at:2)]].
	-1 to: 1 do: [ :x | 
		-1 to: 1 do:[:y| 
			-1 to: 1  do: [:z | b cull: (Array with: x with: y with: z)]]].
	network connections: OrderedCollection new.
	network nodes
		collect: [ :node1 | 
			network nodes
				collect: [ :node2 | 
					| weight connection |
					weight := (self evaluatePosition: (node1 position) and: (node2 position)) at: 1.
					connection := NEConnection new.
					connection
						in: node1 id;
						out: node2 id;
						weight: weight;
						makeEnabled.
					weight abs < 0
						ifTrue: [ connection makeDisabled ].
					network connections add: connection ] ]