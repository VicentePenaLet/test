initialization
resetConnections
	connectionsCache := OrderedCollection new.
	zValue := 0.
	computed := false.
	numberOfInputs := 0.
	numberOfReceivedValues := 0.
	result := 0.
	self isInput
		ifTrue: [ numberOfInputs := 1 ]