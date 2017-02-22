public
textFor: aCollection
	^ String
		streamContents: [ :stream | 
			stream
				<< '@startuml';
				lf;
				<< (self bodyForAll: aCollection);
				<< '@enduml' ]