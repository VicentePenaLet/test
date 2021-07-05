as yet unclassified
bound:  value
|new|
new:= value.
[new >= (2* (Float pi))] whileTrue: [new := (new - (2 * (Float pi)))].
^new
								  
