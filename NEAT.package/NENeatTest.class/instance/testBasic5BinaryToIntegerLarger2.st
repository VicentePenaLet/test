tests
testBasic5BinaryToIntegerLarger2

	| dataset neat s |
	dataset := #(#(0 0 0 0) #(0 0 1 1) #(0 1 0 2) #(0 1 1 3) #(1 0 0 4) #(1 0 1 5) #(1 1 0 6) #(1 1 1 7)).
	neat := NEAT new.
	"neat for: NEConnectionWeightMutationOperation prob: 0.3. "
	neat numberOfInputs: 3.
	neat numberOfOutputs: dataset size.
	neat fitness: [ :ind | 
		| score |
		score := 0.
		dataset do: [ :tuple |
			| r |
			r := Array new: dataset size withAll: 0.
			r at: (tuple last + 1) put: 1.
			
			(ind evaluate: tuple allButLast) with: r do: [ :a :b | 
				score := score + ((a - b) * (a - b)) ] ].
		score negated ].
	neat numberOfGenerations: 350.
	neat run.

	"We compute the overall score of the model"
	s := 0.
	dataset do: [ :t | 
		(neat result predict: t allButLast) = t last 
			ifTrue: [ s := s + 1 ] ].
	self assert: s equals: 8