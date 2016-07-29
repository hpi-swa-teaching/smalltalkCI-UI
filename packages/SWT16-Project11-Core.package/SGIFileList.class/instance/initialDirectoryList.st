initialization
initialDirectoryList
	| dirList |
	"this creates a list of sub-directories of the given main directory".
	dirList := (FileDirectory on: self class path) directoryNames collect: [ :each | FileDirectoryWrapper with: (FileDirectory on: (self class path , FileDirectory primPathNameDelimiter asString , each)) name: each model: self ].
	dirList isEmpty ifTrue: [ dirList := Array with: (FileDirectoryWrapper with: FileDirectory default name: FileDirectory default localName model: self) ].
	dirList := dirList , (ServerDirectory serverNames collect: [ :n |
		| nameToShow dir |
		dir := ServerDirectory serverNamed: n.
		nameToShow := n.
		(dir directoryWrapperClass with: dir name: nameToShow model: self) balloonText: dir realUrl ]).
	^ dirList