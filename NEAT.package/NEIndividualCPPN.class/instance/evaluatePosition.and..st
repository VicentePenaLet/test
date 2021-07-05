adding
evaluatePosition: position1 and: position2
^ super evaluate: (Array
								with: (position1 at: 1)
								with: (position1 at: 2)
								with: (position2 at: 1)
								with: (position2 at: 2)).