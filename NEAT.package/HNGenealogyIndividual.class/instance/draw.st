accessing
draw
|keys y x ind p |
ind := self.
keys := ind activationFunctions keys.
y := OrderedCollection new.
keys do: [:key| y add: (ind activationFunctions at: key)].
x := 1 to: (keys size +2).

nNeurons := ind nNeurons.
nConnections := ind nConnections.

y add: nNeurons.
y add: nConnections.

canvas := RSChart new.
p := RSBarPlot  new x: x y: y.
canvas addPlot: p.

canvas addDecoration: RSHorizontalTick new.
canvas addDecoration: RSVerticalTick new. 