initialization
defaultConfig
	self resetConfig.
	ActivationFunctionMutationOperationProb := 0.2.
	ConnectionWeightMutationOperationProb := 0.2.
	AddConnectionMutationOperationProb := 0.2.
	AddNodeMutationOperationProb := 0.2.
	CrossoverOperationProb := 0.2.
	self for: NEActivationFunctionMutationOperation prob: ActivationFunctionMutationOperationProb.
	self for: NEConnectionWeightMutationOperation prob: ConnectionWeightMutationOperationProb.
	self for: NEAddConnectionMutationOperation prob: AddConnectionMutationOperationProb.
	self for: NEAddNodeMutationOperation prob: AddNodeMutationOperationProb.
	self for: NECrossoverOperation prob: CrossoverOperationProb.
	logFileName:= 'logs/HyperNeat - logs.txt'.

