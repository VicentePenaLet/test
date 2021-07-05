target resize
apply: z
 (z < -1) ifTrue:[^-1].
 (z > 1) ifTrue:[^1].
^z