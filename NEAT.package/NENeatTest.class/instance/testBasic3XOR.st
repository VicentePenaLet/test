tests
testBasic3XOR

	| neat diff r |
	neat := NEAT new.
	neat fitness: [ :ind | 
		| loss |
		loss := 0.
		#(#(0 0 0) #(0 1 1) #(1 0 1) #(1 1 0)) do: [ :tuple |
			diff := (ind evaluate: (tuple first: 2)) first - tuple last.
			loss := loss + (diff * diff) ]. 
		(loss / -4) asFloat ].
	
"	neat resetConfig.
	neat for: NEConnectionWeightMutationOperation prob: 0.99.
"
	neat numberOfGenerations: 100.
	neat run.
	
	r := 
	[ :ind | 
		| score |
		score := 0.
		#(#(0 0 0) #(0 1 0) #(1 0 0) #(1 1 1)) do: [ :tuple |
			((ind predict: (tuple first: 2)) = tuple last) ifTrue: [ score := score + 1 ] ]. 
		score ] value: neat result.
	
	self assert: r equals: 3.
	neat result predict: #(0 1).
	
	