generating
bodyFor: aCollection
	aCollection ifEmpty: [ ^ '' ].
	^ (String
		streamContents: [ :stream | 
			| previous |
			stream
				nextPutAll: '[-> ';
				nextPutAll: aCollection first object className;
				nextPutAll: ' : ';
				nextPutAll: aCollection first selector;
				nextPutAll: String cr.
			previous := aCollection first.
			aCollection allButFirst
				do: [ :each | 
					stream
						nextPutAll: previous object className;
						nextPutAll: ' -> ';
						nextPutAll: each object className;
						nextPutAll: ' : ';
						nextPutAll: each selector;
						nextPutAll: String cr.
					previous := each ] ]) trim