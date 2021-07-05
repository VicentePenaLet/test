accessing
optimize 
| i values |
i := 0.
values := #(0.1 0.3 0.5 0.7).
values do:[:activation| 
	values do:[:weight|
		values do:[:connection|
			values do: [:node|
				values do: [:crossover||ex|
					ex := HNToyExample new.
					ex activationFunctionMutationOperationProb: activation.
					ex connectionWeightMutationOperationProb: weight.
					ex addConnectionMutationOperationProb: connection.
					ex addNodeMutationOperationProb: node.
					ex crossoverOperationProb: crossover.
					ex neat logFileName: ('logs/{1}.txt' format: {i}).
					ex run.
					i := i+1.
					]]]]].