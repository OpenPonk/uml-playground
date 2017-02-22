as yet unclassified
testEmpty
	self
		assert: (generator textFor: #())
		equals: '@startuml' , String lf , '@enduml'