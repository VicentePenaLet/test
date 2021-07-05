as yet unclassified
getMaxOutput
	|out m maxNode|
	out:= cpp network nodes select:[:node| node isOutput].
	m := out first result.
	maxNode := out first.
	out do: [:node| (m < node result abs) ifTrue:[m := node result. maxNode := node.]].
	^maxNode.