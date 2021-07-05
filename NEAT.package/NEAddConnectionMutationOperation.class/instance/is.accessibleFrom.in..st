instance creation
is: node1 accessibleFrom: node2 in: anIndividual
	anIndividual buildNetwork.
	^ self privateIs: node1 accessibleFrom: node2