initialization
doSpeciation
	speciation := NESpeciation new.
	speciation threshold: speciationThreshold.
	speciation process: population.