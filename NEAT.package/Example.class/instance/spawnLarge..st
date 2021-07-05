copying
spawnLarge: aPosition
	|largeSize i j values| 
	largeSize:= (smallSize*2)+1.
	i:= (aPosition at:1) + (smallIndex  at:1).
	j:= (aPosition at:2) + (smallIndex at:2).
	
	(j>11) ifTrue:[j:=j-11].
   (i>11) ifTrue:[i:=i-11].
   
	((11-largeSize)<i) ifTrue:[i:= i - (11-largeSize)].
   ((11-largeSize)<j) ifTrue:[j:= j - (11-largeSize)].
   
	(largeSize +1 > j) ifTrue:[j:= largeSize+1].
	(largeSize +1 > i) ifTrue:[i:= largeSize+1].

	self putSquare: largeSize atRow: i column: j.
	largeIndex := Array with: i with: j.
	values:= -1 to: 1 count: 11.
	largePosition := Array with: (values at: i) with: (values at: j)
