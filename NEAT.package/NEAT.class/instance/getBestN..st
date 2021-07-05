accessing
getBestN: n
	| winners popCopy|
	popCopy := population copy.
	winners := (1 to: n) collect: [ :unused| |winner winnerIndex|winner := popCopy first.
														winnerIndex := 1. 
														popCopy withIndexDo:  [ :i :index | winner fitness < i fitness ifTrue: [ winner := i. winnerIndex := index]].
	popCopy removeAt: winnerIndex.].
	^ winners