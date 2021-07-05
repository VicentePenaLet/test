as yet unclassified
visualizeSpeciesEvolution
	"Species evolution"

	| allSpecies allSpeciations b |
	allSpecies := OrderedCollection new.
	allSpeciations := self logs collect: #speciation.
	b := RTMondrian new.
	b
		nodes: allSpeciations
		forEach: [ :sp | 
			allSpecies addAll: sp groups.
			b shape box size: #numberOfIndividuals.
			b nodes: sp groups ].
	b layout verticalLine alignCenter.
	b shape line
		color: Color blue trans;
		withShorterVerticalAttachPoint.
	b edges
		objects: allSpecies;
		connectToAll: #childrenSpecies.
	b normalizer
		objects: allSpecies;
		normalizeColor: #maxFitness.
	^ b