adding
addConnection: aConnection
	self assert: [ connections noneSatisfy: [ :c | c in = aConnection in and: [ c out =  aConnection out ] ] ] description: 'Cannot have duplicated connections'.

	connections add: aConnection.
	self resetNetwork.