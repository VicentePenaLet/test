as yet unclassified
performOn: i1 and: i2
	"Return a child that is the result of doing a crossover between i1 and i2"
	"ASSUME that the fitness of i1 is higher than the one of i2"
	| newConnections indexI1 indexI2 shouldIterate newNodes individualClass |
	individualClass := i1 class.
	newNodes := OrderedCollection new.
	newNodes addAll: (i1 nodes collect: #copy).

	newConnections := OrderedCollection new.
	indexI1 := 1.
	indexI2 := 1.
	shouldIterate := true.
	(i1 connections notEmpty and: [ i2 connections notEmpty ]) ifFalse: [ ^ individualClass new nodes: newNodes; connections: newConnections; random: i1 random ].
	[ shouldIterate ] whileTrue: [ 
		| c1 c2 |
		indexI1 := indexI1 min: i1 numberOfConnections.
		indexI2 := indexI2 min: i2 numberOfConnections.
		c1 := i1 connections at: indexI1.
		c2 := i2 connections at: indexI2.
		c1 innovationNumber = c2 innovationNumber
			ifTrue: [ 
				newConnections add: (i1 random next > 0.5 ifTrue: [ c1 ] ifFalse: [ c2 ]) copy.
				indexI1 := indexI1 + 1.
				indexI2 := indexI2 + 1. ]
			ifFalse: [ shouldIterate := false ].

		(indexI1 >= i1 numberOfConnections and: [ indexI2 >= i2 numberOfConnections ])
			ifTrue: [ shouldIterate := false ]
	].
	newConnections addAll: ((i1 connections allButFirst: indexI1 - 1) collect: #copy).

	^ individualClass new nodes: newNodes; connections: newConnections; random: i1 random