accessing
run 
|substrate getPosition|
substrate:= OrderedCollection new.
(-1 to: 1 ) do:[:x| (-1 to: 1 ) do: [ :y| substrate add: (Array with: x with: y)]].


NEIndividualCPPN inputs: substrate. 
NEIndividualCPPN outputs: substrate.

neat populationSize: 50. 
neat resetConfig.
neat individualClass: NEIndividualCPPN.
neat resetConfig.

neat activationFunctionMutationOperationProb: activationFunctionMutationOperationProb.
neat connectionWeightMutationOperationProb: connectionWeightMutationOperationProb.
neat addConnectionMutationOperationProb: addConnectionMutationOperationProb.
neat addNodeMutationOperationProb: addNodeMutationOperationProb.
neat crossoverOperationProb: crossoverOperationProb.

neat for: NEActivationFunctionMutationOperation prob: activationFunctionMutationOperationProb.
neat for: NEConnectionWeightMutationOperation prob: connectionWeightMutationOperationProb.
neat for: NEAddConnectionMutationOperation prob: addConnectionMutationOperationProb.
neat for: NEAddNodeMutationOperation prob: addNodeMutationOperationProb.
neat for: NECrossoverOperation prob: crossoverOperationProb.
neat numberOfInputs: 5.
neat numberOfOutputs: 1.
neat updateHyperParameters.

getPosition:= [ :individual| |out m position|
	out:= individual network nodes select:[:node| node isOutput].
	m := 0.
	out do: [:node| (m <= node result) ifTrue:[m:= node result. position:= node position]].
	position].
datasets := OrderedCollection new.
ToyExampleGenerator random: neat random.
neat fitness: [ :cpp | 
		| score network y1 y2 result error dataset|
		score := 0.
		dataset:= ToyExampleGenerator run.
		datasets add: dataset.
		cpp buildANNFromCPP.
		dataset do: [ :example |  example evaluate: cpp.
										 result:= getPosition value: cpp.
										 example predicted: result.
										 error:= (result  - (example smallPosition)) squared sum.
										 score:= score + error].
									score negated asFloat].

neat numberOfGenerations: 20.
neat run.
^neat