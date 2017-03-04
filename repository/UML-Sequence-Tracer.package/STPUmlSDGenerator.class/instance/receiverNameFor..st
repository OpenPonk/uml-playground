accessing
receiverNameFor: aReceiverObject
	^ (self isUnknown: aReceiverObject)
		ifTrue: [ '[' ]
		ifFalse: [ self quoteIfNeeded: aReceiverObject className ]