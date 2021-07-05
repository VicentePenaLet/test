ui
visualize
	| b |
	b := RTMondrian new.
	b shape box size: [ :s | s individuals size ].
	b nodes: (self groups reverseSortedAs: #maxFitness).
	b layout grid.
	b normalizer normalizeColor: #maxFitness.
	^ b