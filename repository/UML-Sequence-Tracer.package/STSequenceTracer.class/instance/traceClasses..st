public
traceClasses: aCollection
	aCollection do: [ :each | self traceClass: each ]