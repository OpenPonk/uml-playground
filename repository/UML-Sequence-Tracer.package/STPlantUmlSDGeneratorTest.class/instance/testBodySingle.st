as yet unclassified
testBodySingle
	| result |
	result := generator bodyFor: {STMessage object: STTest1 new selector: #selfSend}.
	self assert: result equals: '[-> STTest1 : selfSend'