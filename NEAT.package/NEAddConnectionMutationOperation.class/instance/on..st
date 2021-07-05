instance creation
on: anIndividual
	| array newWeight c |
	array := self findMissingConnectionIn: anIndividual nbTry: 5.

	"We did not find a solution, so we merely exit. There is not much we can do"
	array ifNil: [ ^ self ].
	newWeight := self randomWeight.
	c := NEConnection new
				in: array first;
				out: array second;
				weight: newWeight;
				makeEnabled;
				innovationNumber: InnovationNumber.
	anIndividual addConnection: c.
	anIndividual trace: { self class name . c . newWeight }