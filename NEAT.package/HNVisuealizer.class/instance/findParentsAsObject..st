as yet unclassified
findParentsAsObject: item 
^(item parents) collect: [:parent| (self findIdx: (parent id)) collect: [:ea| ea model]]