adding
drawExamples
|dataset|
dataset:= ExampleGenerator run.
		self buildANNFromCPP.
		dataset do: [ :example |  example evaluate: self.
										 result:= getPosition value: self.
										 example predicted: result.
										]