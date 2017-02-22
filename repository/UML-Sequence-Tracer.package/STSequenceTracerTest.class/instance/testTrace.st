tests
testTrace
	| first |
	tracer traceClass: STTest1.
	instance := STTest1 new.
	self assert: tracer messages asArray equals: #().
	instance something.
	self assert: tracer messages size equals: 1.
	first := tracer messages first.
	self assert: first sender selector equals: #testTrace.
	self assert: first receiver equals: instance.
	self assert: first selector equals: #something