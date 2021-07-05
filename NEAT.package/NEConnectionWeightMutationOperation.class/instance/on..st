instance creation
on: anIndividual
	| c newWeight |
	anIndividual connections ifEmpty: [ ^ self ].
	c := (anIndividual connections atRandom: random).
	newWeight := self randomWeight + c weight.
	c weight: newWeight.
	anIndividual trace: { self class name . c . newWeight }