tests
testInstall
	tracer traceClass: STTest1.
	STTest1 methods do: [ :each | self assert: each ast links size equals: 1 ]