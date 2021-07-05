as yet unclassified
getTotalOutput
	|out sum|
	out:= cpp network nodes select:[:node| node isOutput].
	sum := 0.
	out do: [ :node| sum := sum + (node result)].
	^sum.