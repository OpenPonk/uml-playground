accessing
senderNameFor: aSenderMethod
	^ (self isUnknown: aSenderMethod)
		ifTrue: [ '[' ]
		ifFalse: [ self quoteIfNeeded: aSenderMethod methodClass name ]