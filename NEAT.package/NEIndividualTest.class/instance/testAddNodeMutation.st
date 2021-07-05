tests mutation operators
testAddNodeMutation

	| ind |
	ind := NEIndividual new.
	ind seed: 42.
	ind addInputNode; addInputNode; addInputNode.
	ind addOutputNode.
	
	10 timesRepeat: [ NEAddConnectionMutationOperation new performOn: ind ].
	
	self assert: ind numberOfNodes equals: 4.
	self assert: ind numberOfConnections equals: 4.
	
	self assert: (ind nodes allSatisfy: [ :n | n innovationNumber = 1 ]).
	
	NEAddNodeMutationOperation new performOn: ind.
	self assert: ind numberOfNodes equals: 5.
	self assert: ind numberOfConnections equals: 6.
	self assert: ((ind nodes allButLast: 1) allSatisfy: [ :n | n innovationNumber = 1 ]).
	self assert: ind nodes last innovationNumber equals: 12.
"	self assert: ((ind connections allButLast: 3) allSatisfy: [ :n | n innovationNumber = 1 ]).
	self assert: ((ind connections last: 2) allSatisfy: [ :n | n innovationNumber = 2 ])."

	NEAddNodeMutationOperation new performOn: ind.
	self assert: ind numberOfNodes equals: 6.
	self assert: ind numberOfConnections equals: 8.
	self assert: ind nodes last innovationNumber equals: 13.
	"self assert: ((ind connections last: 2) allSatisfy: [ :n | n innovationNumber = 3 ])."
	
	NEAddNodeMutationOperation new performOn: ind.
	self assert: ind numberOfNodes equals: 7.
	self assert: ind numberOfConnections equals: 10.
	self assert: ind nodes last innovationNumber equals: 14.
	"self assert: ((ind connections last: 2) allSatisfy: [ :n | n innovationNumber = 4 ])."
