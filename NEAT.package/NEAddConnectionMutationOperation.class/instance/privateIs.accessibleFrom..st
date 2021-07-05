instance creation
privateIs: node1 accessibleFrom: node2
	node1 == node2 ifTrue: [ ^ true ].
	node2 connectedNodes do: [ :n |
		node1 == n ifTrue: [ ^ true ].
		(self privateIs: node1 accessibleFrom: n) ifTrue: [ ^ true ] ].
	^ false