initialization
doHNLog
	self assert: [ speciation notNil ].
	hNlog := HNLog new.
	hNlog fileName: logFileName.
	hNlog generation: logs size.
	hNlog worstFitness: (population collect: #fitness) min.
	hNlog bestFitness: (population collect: #fitness) max.
	hNlog averageFitness: ((population collect: #fitness) average asFloat round: 3).
	hNlog bestIndividual: (( self result)).
	hNlog bestN:((self getBestN: elitismN)).
	hNlog time: (DateAndTime now asString).
	hNlog population: (self population).
	population do: [ :ind| ind network: 0].
	"generations add: lastPopulation."
	hNlog writeToFile.
	"hNlog populationToFiles."