accessing
receiverNameFor: aReceiverObject
	^ (self isUnknown: aReceiverObject)
		ifTrue: [ '[' ]
		ifFalse: [ aReceiverObject className ]