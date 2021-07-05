as yet unclassified
findParents: item 
^(item parents) collect: [:parent| (self findIdx: (parent id))]