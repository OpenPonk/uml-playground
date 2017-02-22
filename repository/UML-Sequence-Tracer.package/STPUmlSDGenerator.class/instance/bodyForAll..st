generating
bodyForAll: aCollection
	^ String
		streamContents:
			[ :stream | aCollection do: [ :each | stream << (self bodyForMessage: each) ] ]