accessing
populationToFiles
|path|
path := (FileSystem disk workingDirectory / 'logs'/ (generation asString )).
path ensureCreateDirectory. 
population do: [ :ind|  |string fileRef writeStream|
								string := STON toString: ind.
								fileRef := (path / ((ind id asString ) , '.txt')).
								writeStream := fileRef writeStream.
								writeStream setToEnd.
								writeStream nextPutAll: string.
								writeStream lf.
								writeStream close.]

