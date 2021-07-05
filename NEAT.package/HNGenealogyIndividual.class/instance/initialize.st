accessing
initialize 
|keys|
children := OrderedCollection new.
parents := OrderedCollection new.
activationFunctions := Dictionary new.
keys:= ActivationFunction allSubclasses.
elements:= OrderedCollection new.
keys do: [ :key| activationFunctions at: key put: 0].