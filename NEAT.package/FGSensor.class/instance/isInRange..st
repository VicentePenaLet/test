accessing
isInRange: angl
|max ang|
max := maxAngle.
ang := angl.
(maxAngle < minAngle) ifTrue:[max := max + (2 * Float pi). ang := ang + (2* Float pi)].
^ ((minAngle <= ang) and: (ang <= max)) or: ((minAngle <= angle) and: (angle <= max))