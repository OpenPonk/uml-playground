accessing
arrowFrom: aSenderMethod to: aReceiverObject
	^ String
		streamContents: [ :stream | 
			(self isUnknown: aSenderMethod)
				ifFalse: [ stream << ' ' ].
			stream << '->'.
			(self isUnknown: aReceiverObject)
				ifFalse: [ stream << ' ' ] ]