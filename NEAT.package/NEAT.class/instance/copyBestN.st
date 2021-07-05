as yet unclassified
copyBestN
^   logs last bestN collect:[:i| 
	| newInd|
	newInd := individualClass new.
	newInd random: random.
	newInd nodes: (i nodes collect: #copy).
	newInd connections: (i connections collect: #copy).
	newInd fitness: i fitness.
	newInd generation: genNumber.
	newInd addParent: i.
	newInd crossOver: false.
	newInd id: i id.
	i addChildren: newInd.
	newInd
	]