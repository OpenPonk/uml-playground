logging
logFrom: aSender to: aReceiver selector: aSelector context: aContext
	| message |
	message := STMessage
		sender: (self senderForContext: aContext)
		receiver: aReceiver
		selector: aSelector.
	messages add: message