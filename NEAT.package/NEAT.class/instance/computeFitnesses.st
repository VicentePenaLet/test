initialization
computeFitnesses
	population do: [ :i | i computeFitness: fitness ].
	self rankPopulation.