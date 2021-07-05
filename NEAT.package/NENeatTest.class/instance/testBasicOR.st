tests
testBasicOR

	| neat diff precision |
	neat := NEAT new.
	neat fitness: [ :ind | 
		| score |
		score := 0.
		#(#(0 0 0) #(0 1 1) #(1 0 1) #(1 1 1)) do: [ :tuple |
			diff := (ind evaluate: (tuple first: 2)) first - tuple last.
			score := score + (diff * diff) ]. 
		(score / -4) asFloat ].
	
	neat numberOfGenerations: 130.
	neat run.

	precision := 0.15.
	self assert: ((neat result evaluate: #(0 0)) first - 0) < precision.
	self assert: ((neat result evaluate: #(0 1)) first - 1) < precision.
	self assert: ((neat result evaluate: #(1 0)) first - 1) < precision.
	self assert: ((neat result evaluate: #(1 1)) first - 1) < precision.
	
	
	 