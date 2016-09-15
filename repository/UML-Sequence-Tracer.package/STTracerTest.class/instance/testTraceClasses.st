tests
testTraceClasses
	tracer traceClasses: (Array with: STTest1 with: STTest2).
	instance := STTest1 new.
	instance otherCall.
	self
		assert: (tracer messages collect: [ :each | each object class >> each selector ]) asArray
		equals:
			{STTest1 >> #otherCall.
			STTest1 >> #createOther.
			STTest1 >> #something.
			STTest2 >> #number:.
			STTest2 >> #validate:}