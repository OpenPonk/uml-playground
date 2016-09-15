as yet unclassified
testBody
	| result |
	result := generator
		bodyFor:
			{STMessage object: STTest1 new selector: #something.
			STMessage object: STTest2 new selector: #otherthing}.
	self
		assert: result
		equals:
			'[-> STTest1 : something
STTest1 -> STTest2 : otherthing'