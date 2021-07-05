instance creation
performOn: anIndividual
	self assert: [ anIndividual random notNil ] description: 'Individual does not have a random number'.
	random := anIndividual random.
	anIndividual resetFitness.
	self on: anIndividual.
	anIndividual lastMutation: self.