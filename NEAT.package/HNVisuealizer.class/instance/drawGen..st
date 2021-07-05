as yet unclassified
drawGen: i
pop addAll: ((population at: i) collect: [ :ind | |c|
														  c := RSEllipse new size: 5; model: ind.
														  c @ RSPopup @ RSDraggable.
														  ] as: RSGroup).
canvas addAll: pop.
RSGridLayout new lineItemsCount: 50; on: canvas nodes.
canvas @ RSCanvasController.
