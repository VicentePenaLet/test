as yet unclassified
predict: inputs
	"Make a prediction. This method assumes that the number of outputs is the same as the number of different values the network can output"
	"The index of a collection begins at 1 in Pharo"
	| outputs |
	outputs := self evaluate: inputs.
	^ (outputs indexOf: (outputs max)) - 1