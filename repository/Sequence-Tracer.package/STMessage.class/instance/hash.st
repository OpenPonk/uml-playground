as yet unclassified
hash
	^ (self class instanceVariables collect: [ :each | (self instVarNamed: each) hash ])
		reduce: [ :a :b | a bitXor: b ]