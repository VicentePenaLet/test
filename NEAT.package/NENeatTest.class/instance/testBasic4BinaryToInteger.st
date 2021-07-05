tests
testBasic4BinaryToInteger

	| neat r |
	neat := NEAT new.
	"neat doNotUseElitism."
	neat numberOfOutputs: 4.
	neat fitness: [ :ind | 
		| score |
		score := 0.
		#(#(0 0 0) #(0 1 1) #(1 0 2) #(1 1 3)) do: [ :tuple |
			((ind predict: (tuple first: 2)) = tuple last) ifTrue: [ score := score + 1 ]
			].
		score ].
	
"	neat resetConfig.
	neat for: NEConnectionWeightMutationOperation prob: 0.99.
"
	neat numberOfGenerations: 100.
	neat run. 
	
	r :=
	[ :ind | 
		| score |
		score := 0.
		#(#(0 0 0) #(0 1 1) #(1 0 2) #(1 1 3)) do: [ :tuple |
			((ind predict: (tuple first: 2)) = tuple last) ifTrue: [ score := score + 1 ]
			].
		score ] value: neat result.
	self assert: r equals: 4