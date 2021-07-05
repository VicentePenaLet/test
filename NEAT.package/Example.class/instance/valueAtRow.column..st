copying
valueAtRow: i column: j
  | row |
  row := grid at: i ifAbsent: [^nil].
  ^row at: j ifAbsent: [nil]
