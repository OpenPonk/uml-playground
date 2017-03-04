utility
quoteIfNeeded: aString
	^ (aString includes: Character space)
		ifTrue: [ '"' , aString , '"' ]
		ifFalse: [ aString ]