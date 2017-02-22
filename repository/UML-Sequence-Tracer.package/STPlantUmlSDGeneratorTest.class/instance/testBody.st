as yet unclassified
testBody
	| result |
	result := generator
		textFor:
			{STMessage sender: nil receiver: STTest1 new selector: #something.
			STMessage
				sender: STTest1 >> #something
				receiver: STTest2 new
				selector: #validate:}.
	self
		assert: result
		equals:
			'@startuml' , String lf , '[-> STTest1 : something' , String lf
				, 'STTest1 -> STTest2 : validate:' , String lf , '@enduml'