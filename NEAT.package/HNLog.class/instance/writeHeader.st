accessing
writeHeader
|writeStream|
logReference := fileName asFileReference.
writeStream := logReference writeStream.
writeStream setToEnd.
hyperParameters  do: [:each | writeStream nextPutAll: (each asString)  ] separatedBy: [ writeStream nextPut: $, ].
writeStream lf.
writeStream close.