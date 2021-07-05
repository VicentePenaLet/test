as yet unclassified
computeFitness: oneArgBlock
	"self assert: [ fitness isNil ] description: 'Already compute fitness'."
	fitness ifNotNil: [ ^ self ]. "Already computed"
	fitness := oneArgBlock value: self.