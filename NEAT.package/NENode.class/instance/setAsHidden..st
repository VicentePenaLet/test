accessing
setAsHidden: n
	kind := #hidden.
	self activation: Sigmoid.
	self level: n