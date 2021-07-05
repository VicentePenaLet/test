initialization
for: aClass prob: prob
	config do: [ :assoc | (assoc key isKindOf: aClass) ifTrue: [ assoc value: prob. ^ self ] ].
	
	config add: aClass new -> prob