adding
evaluate: anArray
	|result|
	self network = nil
		ifFalse: [ ^ self evaluateAux: anArray ].
   self buildANNFromCPP.
	network buildNetwork.
	result:=network evaluate: anArray.
	"network:= nil."
	^ result