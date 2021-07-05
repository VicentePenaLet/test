adding
processSetOfInnovationsNumbers: someInnovationNumbers

	"This method takes as argument a collection of collection of innovation numbers"
	| g |
	
	g := someInnovationNumbers groupedBy: [ :seq | (seq last: (threshold min: seq size - 1)) first ].
	groups := g values.
	