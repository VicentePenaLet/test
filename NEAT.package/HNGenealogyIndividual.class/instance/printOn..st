accessing
printOn: aStream
	aStream nextPut: $d;
		nextPutAll: position asString