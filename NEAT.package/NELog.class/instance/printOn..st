printing
printOn: str
	super printOn: str.
	str nextPut: $<.
	generation ifNotNil: [ str nextPutAll: generation asString ].
	str nextPut: $>.