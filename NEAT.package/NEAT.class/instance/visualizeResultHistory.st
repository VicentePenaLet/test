ui
visualizeResultHistory
	| b |
	b := RTMondrian new.
	b shape box size: #numberOfIndividuals.
	b interaction popupText: #averageFitness.
	b nodes: self result species withAllParentSpecies asSet.
	b edges connectToAll: #parentSpecies.
	b layout tree.
	b normalizer normalizeColor: #averageFitness.
	^ b