as yet unclassified
showPopulation: n
|pop|
pop := population  collect: [ :ind | RSEllipse new size: 5; model: ind ] as: RSGroup.
canvas := RSCanvas new. 
canvas addAll: pop.

RSNormalizer size
    shapes: canvas nodes;
    normalize: [ :anArray | anArray first fitness ].

RSGridLayout new lineItemsCount: 50; on: canvas nodes.
canvas @ RSCanvasController.
"self population doWithIndex: [ :gen :i| gen doWithIndex: [ :ind :j|  |circle pos eb|
		circle := RSEllipse new size: 10; model: (Array with: ind with: (i@j)).
    	canvas add: circle.
    	circle @ RSPopup @ RSDraggable.
		eb := RSEdgeBuilder arrowedLine.
		eb canvas: canvas.
		eb color: Color gray.
		eb moveBehind.
		eb connectFrom: [ :model| ind parents] to: circle
	   ""pos := ((j-25)@(i-25)).
    	circle translateTo: pos rounded * 15.""]].
RSNormalizer size
    shapes: canvas nodes;
    normalize: [ :anArray | anArray first fitness ].
RSGridLayout new lineItemsCount: 50; on: canvas nodes.


canvas @RSCanvasController."
^canvas