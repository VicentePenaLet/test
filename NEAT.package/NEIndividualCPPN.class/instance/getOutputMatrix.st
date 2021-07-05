adding
getOutputMatrix
|grid factor c|
grid := Example new.
grid createGrid.
factor := self network outputNodes size sqrt - 1 /2.
self  network outputNodes do:[:node |grid placeValue: node result atRow: (node position first * factor + factor +1) column: (node position last * factor + factor + 1) ].

c := RSCanvas new.

grid grid doWithIndex: [ :row :y |
    row doWithIndex: [ :value :x ||color box colorValue aux|
        box := RSBox new size: 10.
        (value < 0.95) ifTrue:[aux:=0];
							 ifFalse:[aux := (value - 0.9)/(1-0.9)].
        colorValue := 1 - ((100000 * (aux-1)) exp).
        color :=  Color r: colorValue g: colorValue b: colorValue.
        c add: box.
    ]
].
RSGridLayout new lineItemsCount: grid grid first size; gapSize: 0; on: c shapes.
c @ RSCanvasController.
grid canvas: c.
^grid.
