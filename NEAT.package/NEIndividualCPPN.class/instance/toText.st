adding
toText 
|stream|
stream := String new writeStream.
(STONWriter on: stream)
    prettyPrint: true;
    newLine: OSPlatform current lineEnding;
    nextPut: self.
 
^stream contents
