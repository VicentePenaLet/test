tests
testBasicANDSecondVersion

	| neat result |
	neat := NEAT new.
	neat numberOfOutputs: 2.
	neat fitness: [ :ind | 
		| score |
		score := 0.
		#(#(0 0 0) #(0 1 0) #(1 0 0) #(1 1 1)) do: [ :tuple |
			result := (ind predict: (tuple first: 2)).
			result = tuple last ifTrue: [ score := score + 1 ] ]. 
		(score / 4) asFloat ].
	
	neat numberOfGenerations: 130.
	neat run.
	
	self assert: (neat result predict: #(0 0)) equals: 0.
	self assert: (neat result predict: #(0 1)) equals: 0.
	self assert: (neat result predict: #(1 0)) equals: 0.
	self assert: (neat result predict: #(1 1)) equals: 1. 