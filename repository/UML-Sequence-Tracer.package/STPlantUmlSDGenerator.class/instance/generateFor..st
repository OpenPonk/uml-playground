generating
generateFor: aCollection
	^ self preamble , (self bodyFor: aCollection) , self postamble