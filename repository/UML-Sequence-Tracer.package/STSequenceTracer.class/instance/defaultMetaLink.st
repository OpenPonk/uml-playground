accessing
defaultMetaLink
	^ MetaLink new
		metaObject: self;
		selector: #logFrom:to:selector:context:;
		arguments: #(sender object selector context);
		control: #before