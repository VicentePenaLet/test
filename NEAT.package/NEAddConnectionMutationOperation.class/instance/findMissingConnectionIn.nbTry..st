instance creation
findMissingConnectionIn: anIndividual nbTry: nbTry
	| node1 node2 |
	nbTry = 0 ifTrue: [ ^ nil ].
	node1 := (anIndividual nodes reject: #isOutput) atRandom: random.
	node2 := (anIndividual nodes reject: #isInput) atRandom: random.
	(anIndividual connections anySatisfy: [ :c |
		(c in = node1 id and: [ c out = node2 id ]) ]) ifTrue: [ 
			^ self findMissingConnectionIn: anIndividual nbTry: (nbTry - 1) ]. 

	(anIndividual connections anySatisfy: [ :c |
		(c in = node2 id and: [ c out = node1 id ]) ]) ifTrue: [ 
			^ self findMissingConnectionIn: anIndividual nbTry: (nbTry - 1) ]. 
		
	(self is: node1 accessibleFrom: node2 in: anIndividual)
		ifTrue: [ ^ self findMissingConnectionIn: anIndividual nbTry: (nbTry - 1) ].
		
	node2 isInput ifTrue: [ ^ self findMissingConnectionIn: anIndividual nbTry: (nbTry - 1) ].
	node1 isOutput ifTrue: [ ^ self findMissingConnectionIn: anIndividual nbTry: (nbTry - 1) ].
	"{ FROM . TO }"
	^ { node1 id . node2 id }