accessing
metaLink
	^ metaLink ifNil: [ metaLink := self defaultMetaLink ]