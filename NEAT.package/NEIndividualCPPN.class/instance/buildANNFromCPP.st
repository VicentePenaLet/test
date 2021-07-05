adding
buildANNFromCPP
		"We build the network from ind, the CPP"
		| net|
	    net := NEIndividual new.
		"This depends on the problem to solve, the XOR"
		
		NEIndividualCPPN inputs do: [ :position| net addInputNode: position ]. 
		NEIndividualCPPN outputs do: [ :position| net addOutputNode:position ].

		
		net inputNodes do: [ :node1| net outputNodes do:[:node2| |array connection| array := (Array with: (node1 position first) with:(node1 position last) with:(node2 position first) with: (node2 position last)).
				connection := NEConnection new makeEnabled; 
													in: (node1 id);
													out: (node2 id);
													weight: ((super evaluate: array) first).
				(connection weight abs < minWeight) ifTrue: [ connection makeDisabled].
				connection weight: (self normalizeWeight: connection weight).
				net addConnection: connection.]].																	
				
				
																							
		
		self network: net