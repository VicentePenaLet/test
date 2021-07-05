accessing
shapes: c
|keys y x ind p group colors g|
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

group := RSGroup new.
colors:= OrderedCollection new.
colors add: Color blue.
colors add: Color red.
colors add: Color cyan.
colors add: Color green.
colors add: Color brown.

colors  with: (ind activationFunctions asOrderedCollection)  do:[:col :value| 
	g := RSGroup new.
	(0 to: value) do:[:unused|
		g add: (RSBox new color: col; size: 20@20)].
	RSHorizontalLineLayout new alignMiddle; on: g.
	group add: g asShape.
	].
.

g := RSGroup new.
(0 to: nNeurons) do:[:unused| g add: (RSBox new color:Color magenta; size: 20@20)].
RSHorizontalLineLayout new alignMiddle; on: g.
group add: g asShape.

g := RSGroup new.
(0 to: nConnections ) do:[:unused| g add: (RSBox new color:Color orange; size: 20@20)].
RSHorizontalLineLayout new alignMiddle; on: g.
group add: g asShape.
RSVerticalLineLayout new alignRight; on: group nodes.
^ group