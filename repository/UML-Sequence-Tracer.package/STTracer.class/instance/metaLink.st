accessing
metaLink
	^ metaLink
		ifNil: [ metaLink := MetaLink new
				metaObject: self;
				selector: #toObject:sent:;
				arguments: #(object selector);
				control: #before ]