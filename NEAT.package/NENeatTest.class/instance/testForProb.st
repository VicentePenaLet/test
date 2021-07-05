tests
testForProb

	| n |
	n := NEAT new.
	self assert: (n for: NECrossoverOperation) ~= 0.5.
	n for: NECrossoverOperation prob: 0.5.
	self assert: (n for: NECrossoverOperation) = 0.5.