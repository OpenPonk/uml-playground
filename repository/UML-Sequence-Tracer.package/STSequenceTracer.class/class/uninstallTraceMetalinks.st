examples
uninstallTraceMetalinks
	"If you lost the link to tracer you can uninstall all links manually, as in the following. (replace STTest1, STTest2 with your classes)"

	{STTest1.
	STTest2}
		do: [ :cls | 
			cls methods
				do: [ :each | each ast links ifNotNil: [ :links | links do: #uninstall ] ] ]