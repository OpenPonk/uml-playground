testing
isUnknown: anObject
	^ anObject isNil
		or: [ anObject class = Context and: [ anObject methodClass = UndefinedObject ] ]