as yet unclassified
showGenerations: n
|eb|
self cleanCanvas.
(1 to: n) do: [ :ind| self drawGen: ind].
RSNormalizer size
    shapes: canvas nodes;
    normalize: [ :model | model fitness ].

eb := RSEdgeBuilder line.
eb canvas: canvas.
eb withBorderAttachPoint.
pop do: [ :shape| eb connectFrom: (shape model) toAll: (self findParents: shape model). ].
RSGridLayout new lineItemsCount: 50; on: canvas nodes.
canvas @ RSCanvasController.