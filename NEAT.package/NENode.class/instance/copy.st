copying
copy
	| newNode |
	newNode := NENode new.
	newNode id: self id.
	newNode kind: self kind.
	newNode innovationNumber: self innovationNumber.
	newNode activation: self activation.
	^ newNode
