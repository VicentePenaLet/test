as yet unclassified
findIdx: idx Gen: gen
|s|
s:=pop select: [:item| (item model id) = idx].
^ s collect:[:ea|ea model]