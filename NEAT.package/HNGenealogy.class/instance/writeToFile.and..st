adding
writeToFile: fileNameElements and: fileNamePopulation
|writeStream elementsHeader populationHeader|
logReference := fileNameElements asFileReference.
writeStream := logReference writeStream.
writeStream setToEnd.

elementsHeader := OrderedCollection new.
elementsHeader add: #Generations.
elementsHeader add: #Positions.
elementsHeader add: #ElementId.
elementsHeader add: #Fitness.
elementsHeader do: [:each | writeStream nextPutAll: each ] separatedBy: [ writeStream nextPut: $, ].
writeStream lf.

population doWithIndex: [ :generation :generationNumber|
	generation doWithIndex: [ :ind :position| 
			|dataElements|
			dataElements := OrderedCollection new.
			dataElements add: generationNumber asString.
			dataElements add: position asString.
			dataElements add: ind id asString.
			dataElements add: ind fitness asString.
			dataElements do: [:each | writeStream nextPutAll: each ] separatedBy: [ writeStream nextPut: $, ].
			writeStream lf.
		]
	].
writeStream close.

logReference := fileNamePopulation asFileReference.
writeStream := logReference writeStream.
writeStream setToEnd.

populationHeader := OrderedCollection new.
populationHeader add: #Generation.
populationHeader add: #Position.
populationHeader add: #Fitness.
populationHeader add: #ClassCoverage.
populationHeader do: [:each | writeStream nextPutAll: each ] separatedBy: [ writeStream nextPut: $, ].
writeStream lf.

population doWithIndex: [ :generation :generationNumber|
	generation doWithIndex: [ :ind :position| 
			|dataPopulation|
			dataPopulation := OrderedCollection new.
			dataPopulation add: generationNumber asString.
			dataPopulation add: position asString.
			dataPopulation add: ind fitness asString.
			dataPopulation add: 0 asString.
			dataPopulation do: [:each | writeStream nextPutAll: each ] separatedBy: [ writeStream nextPut: $, ].
			writeStream lf.
		]
	].
writeStream close.
