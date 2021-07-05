as yet unclassified
childrenSpecies
	| results |
	results := Set new.
	self individuals do: [ :i | results addAll: (i children collect: #species) ].
	^ results