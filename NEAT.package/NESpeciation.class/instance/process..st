adding
process: someIndividuals

	"This method takes as argument a collection of collection of innovation numbers"
	| g |
	
	g := someIndividuals groupedBy: [ :individual | 
		| seq |
		individual network: 0.
		seq := individual innovationNumberSequence.
		seq size < 2 
			ifTrue: [ seq first ]
			ifFalse: [ (seq last: (threshold min: seq size - 1)) first ] ]. 

	groups := g associations collect: [ :assoc | NESpecies new individuals: assoc value; id: assoc key ].
	groups do: [ :aSpecies |
		aSpecies individuals do: [ :i | i species: aSpecies ] ]