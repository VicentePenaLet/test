as yet unclassified
crossoverRate
	| t |
	t := config detect: [ :assoc | assoc key isKindOf: NECrossoverOperation ] ifNone: [ ^ 0 ].
	^ t value