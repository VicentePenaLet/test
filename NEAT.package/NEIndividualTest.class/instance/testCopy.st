tests
testCopy

	| ind ind2 |
	ind := NEIndividual new.
	ind seed: 42.
	ind addInputNode; addInputNode; addInputNode.
	ind addOutputNode.

	ind2 := ind copy.
	self deny: ind equals: ind2.
	self deny: ind nodes equals: ind2 nodes.
	self assert: ind connections equals: ind2 connections.
	self assert: ind random equals: ind2 random.
	
	ind nodes with: ind2 nodes do: [ :n1 :n2 | self deny: n1 equals: n2 ].
	ind connections with: ind2 connections do: [ :c1 :c2 | self deny: c1 equals: c2 ].