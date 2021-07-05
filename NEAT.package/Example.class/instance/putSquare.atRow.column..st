copying
putSquare: size atRow: i column: j 
		(size negated) to:  size do:
			[:x| (size negated) to:  size do: 
				[:y| self placeValue: 1 atRow: (i+x) column: (j+y)]]
