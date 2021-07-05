copying
createGrid
| image |
image:= OrderedCollection new. 
-1 to: 1  do: [ :x| |inner| 
									inner:= OrderedCollection new. 
									-1 to: 1 do:
										[ :y| inner add:  0].
									image add: inner].
grid:=image




