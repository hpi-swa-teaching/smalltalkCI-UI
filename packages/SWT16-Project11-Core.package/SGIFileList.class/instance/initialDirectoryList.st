initialization
initialDirectoryList
	| dirList |
	self refactoringNote: 'Hier wären Kommentare ganz geil. Das liest sich nicht gut.'.
	dirList := (FileDirectory on: self class path) directoryNames collect: [ :each | FileDirectoryWrapper with: (FileDirectory on: (self class path , '\' , each)) name: each model: self ].
	dirList isEmpty ifTrue: [ dirList := Array with: (FileDirectoryWrapper with: FileDirectory default name: FileDirectory default localName model: self) ].
	dirList := dirList , (ServerDirectory serverNames collect: [ :n |
		| nameToShow dir |
		dir := ServerDirectory serverNamed: n.
		nameToShow := n.
		(dir directoryWrapperClass with: dir name: nameToShow model: self) balloonText: dir realUrl ]).
	^ dirList