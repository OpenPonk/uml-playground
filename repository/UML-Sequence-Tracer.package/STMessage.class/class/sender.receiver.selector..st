instance creation
sender: aSender receiver: aReceiver selector: aSymbol
	^ self new
		sender: aSender;
		receiver: aReceiver;
		selector: aSymbol;
		yourself