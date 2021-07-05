initialization
initialize
	super initialize.
	self defaultConfig.

	"We have two inputs and one bias"
	numberOfInputs := 2.
	numberOfOutputs := 1.
	
	genNumber:= 1.
	populationSize := 150.
	random := Random seed: 42.
	elitismN := 10.
	logs := OrderedCollection new.
	hNlogs := OrderedCollection new.
	hNlog := HNLog new.
	hNlog fileName: logFileName.
	hNlog hyperParameters: (Array with: ActivationFunctionMutationOperationProb with: ConnectionWeightMutationOperationProb with: AddConnectionMutationOperationProb with: AddNodeMutationOperationProb with: CrossoverOperationProb).
	hNlog cleanFile.
	hNlog writeHeader.
	(FileSystem disk workingDirectory / 'logs' ) ensureCreateDirectory. 
	numberOfGenerations := 10.
	generations := OrderedCollection new.
	genealogy := HNGenealogy new.
	generationRanked := OrderedCollection new.
	self individualClass: NEIndividual.
	self speciationThreshold: 8.
	self doUseElitism.
