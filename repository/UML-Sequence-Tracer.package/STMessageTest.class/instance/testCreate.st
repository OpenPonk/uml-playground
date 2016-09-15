tests
testCreate
	| message1 message2 |
	message1 := STMessage
		object: self
		selector: #something
		arguments: #()
		returnValue: 12.
	message2 := STMessage
		object: self
		selector: #something
		arguments: #()
		returnValue: 12.
	self assert: message1 equals: message2.
	self assert: message1 hash equals: message2 hash