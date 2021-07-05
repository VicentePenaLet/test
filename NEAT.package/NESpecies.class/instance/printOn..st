printing
printOn: str
	super printOn: str.
	str nextPut: $<.
	id ifNotNil: [ str nextPutAll: id asString ].
	str nextPut: $,.
	individuals ifNotNil: [ str nextPutAll: individuals size asString ].
	str nextPut: $>.