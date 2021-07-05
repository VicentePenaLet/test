adding
addInputNode: aPosition
	self
		addNode:
			(NENode new
				setAsInput;
				innovationNumber: 1;
				computed: false; position: aPosition)

	"	self outputNodes do: [ :on |
		newWeight := random next * 4 - 2.
		self addConnection: (NEConnection new in: self numberOfNodesWithBias; out: on id; weight: newWeight; makeEnabled; innovationNumber: 1)
	]"