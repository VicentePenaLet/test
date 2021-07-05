tests
testBasic

	| neat diff precision |
	neat := NEAT new.
	neat fitness: [ :ind | 
		| score |
		score := 0.
		#(#(0 0 0) #(0 1 0) #(1 0 0) #(1 1 1)) do: [ :tuple |
			diff := (ind evaluate: (tuple first: 2)) first - tuple last.
			score := score + (diff * diff) ]. 
		(score / -4) asFloat ].
	
"	neat fitness: [ :ind | 
		| score |
		score := 0.
		#(#(0 0 0) #(0 1 0) #(1 0 0) #(1 1 1)) do: [ :tuple |
			((ind evaluate: (tuple first: 2)) first - tuple last) abs <= 0.1 ifTrue: [ score := score + 1 ] ]. 
		score ]."
	neat numberOfGenerations: 130.
	neat run.
	
	[ :ind | 
		| score |
		score := 0.
		#(#(0 0 0) #(0 1 0) #(1 0 0) #(1 1 1)) do: [ :tuple |
			((ind evaluate: (tuple first: 2)) first - tuple last) abs <= 0.1 ifTrue: [ score := score + 1 ] ]. 
		score ] value: neat result.
	
	precision := 0.2.
	self assert: ((neat result evaluate: #(0 0)) first - 0) < precision.
	self assert: ((neat result evaluate: #(0 1)) first - 0) < precision.
	self assert: ((neat result evaluate: #(1 0)) first - 0) < precision.
	self assert: ((neat result evaluate: #(1 1)) first - 1) < precision.
	
	
	 