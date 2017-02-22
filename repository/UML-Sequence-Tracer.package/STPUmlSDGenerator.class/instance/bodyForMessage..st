generating
bodyForMessage: aMessage
	^ String
		streamContents: [ :stream | 
			stream
				nextPutAll: (self senderNameFor: aMessage sender);
				nextPutAll: (self arrowFrom: aMessage sender to: aMessage receiver);
				nextPutAll: (self receiverNameFor: aMessage receiver);
				nextPutAll: ' : ';
				nextPutAll: aMessage selector;
				lf ]