adding
getInputMatrix
|grid factor c|
grid := Example new.
grid createGrid.
factor := self network inputNodes size sqrt - 1 /2.
self  network inputNodes do:[:node |grid placeValue: node result atRow: (node position first * factor + factor +1) column: (node position last * factor + factor + 1) ].

c := RSCanvas new.

grid grid doWithIndex: [ :row :y |
    row doWithIndex: [ :value :x ||color box colorValue|
        box := RSBox new size: 10.
        colorValue := (1-value) exp * 100.
        color :=  Color r: colorValue g: colorValue b: colorValue.
        value = 0 
            ifTrue: [ box color: color] 
            ifFalse: [  box color: color  ].
        c add: box.
    ]
].
RSGridLayout new lineItemsCount: grid grid first size; gapSize: 0; on: c shapes.
c @ RSCanvasController.
grid canvas: c.
^grid.
