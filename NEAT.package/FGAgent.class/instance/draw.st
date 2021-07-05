as yet unclassified
draw 
drawings := OrderedCollection new.
positionHistory asArray with: self getFoodPositions do: [:posHistory :foodPosition ||foodCircle|
	canvas := RSCanvas new. 
	posHistory doWithIndex: [ :pos :ind| |circle|
	 												circle := RSEllipse new size: 5; model: ind.
    												canvas add: circle.
    												circle @ RSPopup.
    												circle translateTo: pos rounded * 5.].
	
	"foodCircle := RSEllipse new size: 20; color: Color red.
	canvas add: foodCircle.
	foodCircle @ RSPopup.
	foodCircle translateTo: foodPosition rounded * 5."
	canvas @ RSCanvasController.
	drawings add: canvas.  
	].
