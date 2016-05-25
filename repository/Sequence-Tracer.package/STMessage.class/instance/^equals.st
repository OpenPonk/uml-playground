as yet unclassified
= anotherMessage
	self species = anotherMessage species
		ifFalse: [ ^ false ].
	self object = anotherMessage object
		ifFalse: [ ^ false ].
	self arguments = anotherMessage arguments
		ifFalse: [ ^ false ].
	self returnValue = anotherMessage returnValue
		ifFalse: [ ^ false ].
	^ true