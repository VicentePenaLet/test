printing
printOn: str
	super printOn: str.
	str nextPut: $<.
	fitness ifNotNil: [ str nextPutAll: fitness asString ].
	str nextPut: $>.
	str nextPut: $<.
	fitness ifNotNil: [ str nextPutAll: id asString ].
	str nextPut: $>.
	str nextPut: $<.
	fitness ifNotNil: [ str nextPutAll: gen asString ].
	str nextPut: $>.