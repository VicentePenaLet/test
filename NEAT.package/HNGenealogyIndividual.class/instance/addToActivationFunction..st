accessing
addToActivationFunction: class
|previous|
class ifNotNil:[
previous := activationFunctions at: class.
activationFunctions at: class put: (previous + 1).]