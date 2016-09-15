tests
testTrace
	tracer traceClass: STTest1.
	instance := STTest1 new.
	self assert: tracer messages asArray equals: #().
	instance something.
	self assert: tracer messages size equals: 1.
	self assert: tracer messages first equals: (STMessage object: instance selector: #something)