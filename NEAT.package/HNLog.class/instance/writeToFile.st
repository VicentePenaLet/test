accessing
writeToFile
|writeStream data|
logReference := fileName asFileReference.
writeStream := logReference writeStream.
writeStream setToEnd.
data := OrderedCollection new.
data add: generation asString.
data add: bestFitness asString.
data add: worstFitness asString.
data add: averageFitness asString.
data add: time.
data do: [:each | writeStream nextPutAll: each ] separatedBy: [ writeStream nextPut: $, ].

writeStream lf.
writeStream close.
