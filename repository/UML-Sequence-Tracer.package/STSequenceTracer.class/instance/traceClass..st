public
traceClass: aClass
	aClass methods do: [ :each | each ast link: self metaLink ]