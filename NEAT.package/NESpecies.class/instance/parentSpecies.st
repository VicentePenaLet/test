as yet unclassified
parentSpecies
	| results |
	results := Set new.
	self individuals do: [ :i | results addAll: (i parents collect: #species) ].
	^ results asSet asArray