copying
copy
	| newInd |
	newInd := self class new.
	newInd random: self random.
	newInd nodes: (self nodes collect: #copy).
	newInd connections: (self connections collect: #copy).
	newInd children: self children.
	newInd parents: self parents.
	newInd fitness: self fitness.
	newInd ticks: self ticks.
	newInd results:  results.
	newInd expected:  expected.
	^ newInd