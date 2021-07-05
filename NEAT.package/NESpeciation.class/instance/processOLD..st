adding
processOLD: someIndividuals
	"DOES NOT REALLY work. "

	"This method takes as argument a collection of collection of innovation numbers"
	| g |
	
	g := someIndividuals groupedBy: [ :individual | 
		| seq |
		seq := individual innovationNumberSequence.
		(seq last: (threshold min: seq size - 1)) first ].

	groups := g associations collect: [ :assoc | NESpecies new individuals: assoc value; id: assoc key ]	
	