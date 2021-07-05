instance creation
performOn: anIndividual
	InnovationNumber isNil ifTrue: [ self class reset ].
	InnovationNumber := InnovationNumber + 1.
	super performOn: anIndividual.