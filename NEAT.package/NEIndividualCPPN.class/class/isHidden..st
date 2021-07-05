testing
isHidden: position
	^ ((self isInput: position) or: (self isOutput: position)) not.