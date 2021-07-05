adding
addOutputNode
	self
		addNode:
			(NENode new
				setAsOutput;
				innovationNumber: 1;
				computed: false; activation: Sigmoid)

	"	self inputNodes do: [ :ino |
		newWeight := random next * 4 - 2.
		self addConnection: (NEConnection new in: ino id; out: self numberOfNodesWithBias; weight: newWeight; makeEnabled; innovationNumber: 1)
	]"