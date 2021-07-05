accessing
setAsOutput: n
	kind := #output.
	self activation: Sigmoid.
	self level: n