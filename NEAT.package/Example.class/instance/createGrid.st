copying
createGrid
| image |
image:= OrderedCollection new. 
-1 to: 1 by:0.2s do: [ :x| |inner| 
									inner:= OrderedCollection new. 
									-1 to: 1 by: 0.2s do:
										[ :y| inner add:  0].
									image add: inner].
grid:=image
