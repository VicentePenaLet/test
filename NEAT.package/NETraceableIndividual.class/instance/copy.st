copying
copy
	| result |
	result := super copy.
	result setTrace: trace copy.
	^ result