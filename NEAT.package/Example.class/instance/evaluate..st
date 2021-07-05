copying
evaluate: cpp
|input|
input:= OrderedCollection new.
self grid do:[:row| input addAll: row].
cpp evaluate: input.
