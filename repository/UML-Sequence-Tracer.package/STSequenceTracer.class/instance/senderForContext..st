logging
senderForContext: aContext
	| sender |
	sender := aContext sender.
	[ sender isNotNil and: [ sender methodClass name = #ReflectiveMethod ] ]
		whileTrue: [ sender := sender sender ].
	^ sender