accessing
updateGenealogy
	| thisGeneerationGenealogyInd |
	self computeFitnesses.
	thisGeneerationGenealogyInd := population
		collectWithIndex: [ :ind :idx| 
			| id gen genInd parentsId childrenId parentGen indParents|
			id := ind id.
			gen := genNumber.
			parentsId := ind parents collect:[:parent| parent id].
			childrenId := ind parents collect:[:child|child id].
			parentGen := ind parents collect:[:parent| parent id].
			genInd := HNGenealogyIndividual new.
			genInd
				id: id;
				generation: gen;
				lastMutation: ind lastMutation;
				crossOver: ind crossOver;
				nNeurons: ind nodes size;
				position: idx;
				fitness: ind fitness;
				nConnections: ind connections size.
			ind nodes do: [:node | genInd addToActivationFunction: node activation].
			indParents := parentsId flatCollect: [:parentId| (genealogy population at: (gen - 1)) select: [:each| each id = parentId]].
			indParents do: [ :parent|genInd addParent: parent. parent addChild: genInd].
			genInd.
			].
	genealogy add: thisGeneerationGenealogyInd