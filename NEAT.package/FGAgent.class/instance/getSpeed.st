as yet unclassified
getSpeed
	|oMax oTot|
	oMax := self getMaxOutput result.
	oTot := self getTotalOutput.
	^ (maxSpeed  * oMax) * (oMax / (oTot+0.0000000001))