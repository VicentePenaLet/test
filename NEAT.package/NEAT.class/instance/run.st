initialization
run
	self buildInitialPopulation.
	self doSpeciation.
	self computeFitnesses.
	self doLog.
	
	self runFor: numberOfGenerations.
	self doSpeciation.
	self doHNLog.
	self saveNeat.
	self genealogy writeToFile: ('elements.csv') and: ('population.csv')
	
