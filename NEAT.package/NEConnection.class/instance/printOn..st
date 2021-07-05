printing
printOn: str
	super printOn: str.
	str nextPut: $<.
	in ifNotNil: [ str nextPutAll: in asString ].
	str nextPut: $,.
	out ifNotNil: [ str nextPutAll: out asString ].
	str nextPut: $,.
	innovationNumber ifNotNil: [ str nextPutAll: innovationNumber asString ].
	enabled ifFalse: [ 
		str nextPut: $,.
		str nextPutAll: 'disabled' ]. 
	str nextPut: $>.