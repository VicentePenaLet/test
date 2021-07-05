adding
visualizeNetworkWeights
		network inputNodes do: [ :node1| network outputNodes do:[:node2| |array connection| array := (Array with: (node1 position x) with:(node1 position y) with:(node2 position x) with: (node2 position y)).
				connection := (super evaluate: array) first]]
																	
				
