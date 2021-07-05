ui
visualize
	| b |
	self buildNetwork.
	b := RTMondrian new.
	b shape label text: #id;
		color: Color gray;
		if: #isInput color: Color blue;
		if: #isOutput color: Color red;
		if: #isBias color: Color yellow.
	b nodes: self nodes.
	b edges connectToAll: #connectedNodes.
	b layout tree.
	^ b