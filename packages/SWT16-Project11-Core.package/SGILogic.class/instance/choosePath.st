choosing
choosePath
	| folder |
	folder := FileList2 modalFolderSelector: FileDirectory root.
	folder ifNotNil: [ self path: folder fullName ]