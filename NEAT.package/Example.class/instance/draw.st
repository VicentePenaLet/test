copying
draw
|position|
c := RSCanvas new.

position:= (largeIndex last @ largeIndex first).
grid doWithIndex: [ :row :y |
    row doWithIndex: [ :value :x ||box|
        box := RSBox new size: 10.
        value = 0 
            ifTrue: [ box color: Color black ] 
            ifFalse: [  box color: Color white  ].
		(x @ y)  =	 position ifTrue: [ box color: Color red ].
		(x @ y)  = (predictedIndex first @ predictedIndex last) ifTrue: [ box color: Color green ].
        c add: box.
    ]
].

RSGridLayout new lineItemsCount: grid first size; gapSize: 0; on: c shapes.
c @ RSCanvasController.
