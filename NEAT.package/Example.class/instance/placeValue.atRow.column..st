copying
placeValue: value atRow: i column: j
  | row |
  row := grid at: i ifAbsentPut: [OrderedCollection new].
  j - row size timesRepeat: [row add: nil].
  row at: j put: value
