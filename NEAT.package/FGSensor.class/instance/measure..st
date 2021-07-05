accessing
measure: point
  angle:= ((point y - agentPosition y)/ (point x - agentPosition x)) arcTan.
  ((point x - agentPosition x) < 0) ifTrue: [ angle := angle + (Float pi)].
  ((point y - agentPosition y) < 0) ifTrue: [ angle := angle + (Float pi * 2)].
  angle := Angle bound: angle. 
  angleDegree := angle *180 /  Float pi.
  (self isInRange: angle) ifFalse: [ output:= 0];
								  ifTrue: [ output := point dist: position]

	