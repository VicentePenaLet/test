adding
addOutputNode: aPosition
	self
		addNode:
			(NENode new
				setAsOutput;
				innovationNumber: 1;
				activation: Sigmoid;
				computed: false;
				position: aPosition)

	"	self inputNodes do: [ :ino |
		newWeight := random next * 4 - 2.
		self addConnection: (NEConnection new in: ino id; out: self numberOfNodesWithBias; weight: newWeight; makeEnabled; innovationNumber: 1)
	]"