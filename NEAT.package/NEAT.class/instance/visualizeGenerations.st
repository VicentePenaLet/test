as yet unclassified
visualizeGenerations
	| b allIndividuals t |
	b := RTMondrian new.
	allIndividuals := OrderedCollection new.
	b
		nodes: (self logs allButFirst collect: #speciation)
		forEach: [ :spe | 
			b shape box size: #numberOfChildren.
			t := (spe population reverseSortedAs: #numberOfChildren)
				select: [ :ii | ii numberOfChildren >= 3 ].
			allIndividuals addAll: t.
			b nodes: t ].
	b layout verticalLine.
	b shape line color: Color blue trans.
	b edges
		objects: allIndividuals;
		connectToAll: #children.
	b normalizer
		objects: allIndividuals;
		normalizeColor: #fitness
			using:
			{Color red.
			Color gray}
			using: #squared.
	^ b