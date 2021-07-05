initialization
runFor: nbGen

	'Running the NEAT algorithm'
	displayProgressFrom: 1 to: nbGen
	during: [:bar |
		1 to: nbGen do: [:x | 
			bar value: x.
			self runOneGeneration. ] ].