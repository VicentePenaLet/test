as yet unclassified
runOneGeneration
	| newPopulation ind1 ind2 newInd numberOfIndividualToCreate |
	self doSpeciation.
	genNumber := genNumber+1.
	newPopulation := OrderedCollection new.
	numberOfIndividualToCreate := (shouldUseElitism and: [genNumber > 1 ]) 
												ifTrue: [ newPopulation addAll: self copyBestN  . populationSize - elitismN] 
												ifFalse: [ populationSize ].
	numberOfIndividualToCreate
		timesRepeat: [ 
			"The following lines use the crossover"
			random next <= self crossoverRate
				"using crossover"
				ifTrue: [
					"select firts individual"
					ind1 := self selectIndividual.
					"Select individuals for the same species as ind1"
					ind2 := self selectIndividual: ind1 species individuals.
					newInd := self crossoverBetween: ind1 and: ind2.
					newInd addParent: ind1; addParent: ind2.
					newInd crossOver: true.
					ind1 addChildren: newInd.
					ind2 addChildren: newInd ]
				"Without crossover"
				ifFalse: [
					| i |
					i := self selectIndividual.
					newInd := individualClass new.
					newInd random: random.
					newInd nodes: (i nodes collect: #copy).
					newInd connections: (i connections collect: #copy).
					newInd fitness: i fitness.
					newInd generation: genNumber.
					newInd addParent: i.
					newInd crossOver: false.
					i addChildren: newInd ].

			self doMutate: newInd.
			newInd id: populationId.
			newInd generation: genNumber.
			populationId:= populationId + 1.
			newPopulation add: newInd.
			newInd computeFitness: fitness ].
	lastPopulation := self population.
	population := newPopulation.
	"population do: [ :ind| ind gen: genNumber]."
	self updateGenealogy.
	self rankPopulation.
	self doHNLog.
	self doLog.