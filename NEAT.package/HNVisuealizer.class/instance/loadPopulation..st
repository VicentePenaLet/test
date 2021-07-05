as yet unclassified
loadPopulation: nGen
population:= (1 to: nGen) collect:  [:gen| self loadGeneration: (gen+1)].