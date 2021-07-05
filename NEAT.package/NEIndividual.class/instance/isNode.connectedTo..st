testing
isNode: node1Id connectedTo: node2Id
	^ connections anySatisfy: [ :c | c in = node1Id and: [ c out = node2Id ] ]