as yet unclassified
withAllParentSpecies: result
	result add: self.
	self parentSpecies do: [ :s | s withAllParentSpecies: result ] 