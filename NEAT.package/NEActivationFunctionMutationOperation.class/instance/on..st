instance creation
on: anIndividual
	| node newActivation |
	node := anIndividual nodes atRandom: random.
	newActivation := ActivationFunction allSubclasses atRandom: random.
	node activation: newActivation.