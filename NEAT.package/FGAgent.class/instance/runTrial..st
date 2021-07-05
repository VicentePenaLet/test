as yet unclassified
runTrial: foodPosition
|positions|
positions := OrderedCollection new.
positions add: position.
1 to: maxTicks do: [ :i|  |outs|
						self measure: foodPosition.
						outs:= sensors collect: [:sensor| sensor output.].
						cpp buildANNFromCPP.
						cpp evaluate: outs.
						self getSpeed.
						self move.
						positions add: position.
						((position distanceTo: foodPosition) abs < tolerance) ifTrue: [ score := score + 1.ttot := ttot + i. capturedFood add: foodPosition .positionHistory add: positions.^true]. 
						].
positionHistory add: positions.
ttot := ttot + maxTicks. 