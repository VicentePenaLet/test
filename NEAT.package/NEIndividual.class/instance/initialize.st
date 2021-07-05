initialization
initialize
	super initialize.
	nodes := OrderedCollection new.
	connections := OrderedCollection new.
	"self seed: 42."
	
	"This is the bias node"
	
	
	parents := OrderedCollection new: 2.
	children := OrderedCollection new