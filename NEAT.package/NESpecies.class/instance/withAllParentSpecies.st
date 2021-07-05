as yet unclassified
withAllParentSpecies
	| result |
	result := OrderedCollection new.
	self withAllParentSpecies: result.
	^ result 