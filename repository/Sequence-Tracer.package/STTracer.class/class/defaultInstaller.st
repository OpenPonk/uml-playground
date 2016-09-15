accessing
defaultInstaller
	^ DefaultInstaller ifNil: [ DefaultInstaller := MTMetaLinksInstaller new ]