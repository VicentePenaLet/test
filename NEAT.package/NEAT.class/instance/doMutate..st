as yet unclassified
doMutate: newInd
	config
		do: [ :cAssoc | 
			(cAssoc key isKindOf: NEAbstractMutationOperation) ifTrue: [
				random next <= cAssoc value
					ifTrue: [ cAssoc key random: random; performOn: newInd ] ] ]