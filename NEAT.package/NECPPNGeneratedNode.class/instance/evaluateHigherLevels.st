as yet unclassified
evaluateHigherLevels
	connectionsCache do: [ :connection| 
		((connection value) level > self level) ifTrue:
		[connection value evaluate: (result * connection key)]]