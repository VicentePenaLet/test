tests
testBasic5BinaryToIntegerLarger

	| neat |
	neat := NEAT new.
	neat for: NEConnectionWeightMutationOperation prob: 0.3. 
	neat numberOfInputs: 3.
	neat numberOfOutputs: 8.
	neat fitness: [ :ind | 
		| score |
		score := 0.
		#(#(0 0 0 0) #(0 0 1 1) #(0 1 0 2) #(0 1 1 3) #(1 0 0 4) #(1 0 1 5) #(1 1 0 6) #(1 1 1 7)) do: [ :tuple |
			((ind predict: tuple allButLast) = tuple last) ifTrue: [ score := score + 1 ] ].
		score ].
	neat numberOfGenerations: 350.
	neat run.
	
	self assert: neat result fitness equals: 6.
	self assert: neat logs last maxFitness equals: 6