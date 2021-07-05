as yet unclassified
findParents: idx Gen: gen
^ pop select: [:model| (model last = gen) and: (model id = idx)].
