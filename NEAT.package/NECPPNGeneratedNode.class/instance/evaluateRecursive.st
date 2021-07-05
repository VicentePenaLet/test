as yet unclassified
evaluateRecursive
	connectionsCache do: [ :connection| 
		((connection value) level >= self level) ifTrue:
		[zValue := zValue + (connection key * (Sigmoid apply:(connection value zValue)))]]