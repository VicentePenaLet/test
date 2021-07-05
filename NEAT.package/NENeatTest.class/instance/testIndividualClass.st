tests
testIndividualClass
	| neat diff |
	neat := NEAT new.
	neat individualClass: NETraceableIndividual.
	neat speciationThreshold: 1.
	neat fitness: [ :ind | 
		| score |
		score := 0.
		#(#(0 0 0) #(0 1 0) #(1 0 0) #(1 1 1)) do: [ :tuple |
			diff := (ind evaluate: (tuple first: 2)) first - tuple last.
			score := score + (diff * diff) ]. 
		(score / -4) asFloat ].
	neat numberOfGenerations: 130.
	neat run.
	self assert: neat result class equals: NETraceableIndividual