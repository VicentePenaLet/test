initialization
for: aClass
	config do: [ :assoc | (assoc key isKindOf: aClass) ifTrue: [ ^ assoc value ] ].
	^ 0