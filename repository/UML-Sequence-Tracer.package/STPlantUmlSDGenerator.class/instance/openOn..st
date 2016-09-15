generating
openOn: aCollection
	| dir file |
	dir := FileLocator temp asFileReference / 'sd-generator'.
	dir ensureCreateDirectory.
	file := dir / DateAndTime now asFileNameCompatibleString , 'plantuml'.
	file
		writeStreamDo: [ :stream | 
			stream
				lineEndConvention: #lf;
				nextPutAll: (self generateFor: aCollection) ].
	self system: ('plantuml "{1}"' format: {file pathString}).
	(ImageReadWriter formFromFileNamed: (file withExtension: 'png') pathString) asMorph
		openInWindow