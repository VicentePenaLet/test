as yet unclassified
rankPopulation
|sorted rankedId|
sorted  := SortedCollection sortBlock: [:ind1 :ind2 | ind1 fitness >= ind2 fitness]. 
sorted addAll: self population.
rankedId := sorted collect: [ :ind| (ind id@ind fitness)].
generationRanked add: rankedId.