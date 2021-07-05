as yet unclassified
findParentsIdx: idx Gen: gen
^ pop select: [:model| (model last = gen) and: (model ind first id = idx)].
