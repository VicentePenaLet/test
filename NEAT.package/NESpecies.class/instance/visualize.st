ui
visualize
	| b |
	b := RTMondrian new.
	b nodes: individuals.
	b layout grid.
	^ b