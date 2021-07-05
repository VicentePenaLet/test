accessing
innovationNumberSequence
	self connections ifEmpty: [ ^ #(0) ].
	^ self connections collect: #innovationNumber as: Array