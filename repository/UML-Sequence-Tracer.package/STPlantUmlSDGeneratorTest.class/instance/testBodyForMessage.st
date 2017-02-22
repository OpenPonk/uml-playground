as yet unclassified
testBodyForMessage
	| result |
	result := generator
		bodyForMessage: (STMessage sender: nil receiver: STTest1 new selector: #selfSend).
	self assert: result equals: '[-> STTest1 : selfSend' , String lf