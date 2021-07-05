initialization
doLog
	self assert: [ speciation notNil ].
	log := NELog new.
	log generation: logs size.
	"log speciation: speciation."
	log minFitness: (population collect: #fitness) min.
	log maxFitness: (population collect: #fitness) max.
	log averageFitness: ((population collect: #fitness) average asFloat round: 3).
	log bestIndividual: (( self result)).
	log bestN:((self getBestN: elitismN)).
	logs add: log.