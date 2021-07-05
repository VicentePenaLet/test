as yet unclassified
loadGeneration: gen
^ (FileSystem disk workingDirectory / 'logs'/ gen asString ) children collect: [:file| (STONReader on: (file readStream)) next].