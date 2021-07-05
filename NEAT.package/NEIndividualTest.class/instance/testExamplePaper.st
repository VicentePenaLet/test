tests
testExamplePaper

	| ind |
	ind := NEIndividual new.
	ind random: (Random seed: 42).
	ind addInputNode; addInputNode; addInputNode; addOutputNode; addHiddenNode.
	ind addConnection: (NEConnection new in: 2; out: 6; weight: 0.2; makeEnabled; innovationNumber: 4).
	ind addConnection: (NEConnection new in: 6; out: 5; weight: 0.4; makeEnabled; innovationNumber: 5).
	ind addConnection: (NEConnection new in: 1; out: 6; weight: 0.6; makeEnabled; innovationNumber: 6).

	self assert: ind numberOfInputs equals: 3.
	self assert: ind numberOfOutputs equals: 1.
	self assert: ind numberOfNodes equals: 5.
	
"	ind buildNetwork."
	self assert: (ind evaluate: #(0.1 0.2 0.3)) equals: #(0.5646577813136897).
	self assert: (ind evaluate: #(3 2 1)) equals: #(0.5762529248035996).

"	self assert: ind nodes first connectedNodes equals: { ind nodes fourth . ind nodes fifth }.
	self assert: ind nodes second connectedNodes equals: { ind nodes fourth . ind nodes fifth }.
	self assert: ind nodes third connectedNodes equals: { ind nodes fourth }.
	self assert: ind nodes fourth connectedNodes isEmpty.
	self assert: ind nodes fifth connectedNodes equals: { ind nodes fourth }.
	
	self assert: (ind isNode: 1 connectedTo: 4).
	self assert: (ind isNode: 1 connectedTo: 5).	
	self assert: (ind isNode: 3 connectedTo: 4).
	self deny: (ind isNode: 3 connectedTo: 5)."