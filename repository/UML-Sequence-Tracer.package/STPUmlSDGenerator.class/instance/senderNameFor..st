accessing
senderNameFor: aSenderMethod
	^ (self isUnknown: aSenderMethod)
		ifTrue: [ '[' ]
		ifFalse: [ aSenderMethod methodClass name ]