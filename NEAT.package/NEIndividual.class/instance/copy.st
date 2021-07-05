copying
copy
	| newInd |
	newInd := self class new.
	newInd random: self random.
	newInd nodes: (self nodes collect: #copy).
	newInd connections: (self connections collect: #copy).
	"newInd children: children.
	newInd parents: parents."
	newInd fitness: fitness.
	newInd ticks: ticks.
	newInd results: results.
	newInd expected: expected.
	^ newInd