printing
printOn: str 
	super printOn: str.
	str nextPut: $<.
	id ifNotNil: [ str nextPutAll: id asString ].
	str nextPut: $,.
	innovationNumber ifNotNil: [ str nextPutAll: innovationNumber asString ].
	str nextPut: $,.
	kind ifNotNil: [ str nextPutAll: kind asString ].
	str nextPut: $>.