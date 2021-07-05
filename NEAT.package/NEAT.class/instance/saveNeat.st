as yet unclassified
saveNeat
|str|
str := 'logs/neat.txt' asFileReference writeStream.
fitness := nil.
STON writer on: str;
    nextPut: self.
str close.