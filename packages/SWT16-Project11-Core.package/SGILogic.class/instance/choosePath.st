choosing
choosePath
	| folder|
	folder := FileList2 modalFolderSelector: FileDirectory root.
	folder ifNotNil: [self model path: folder fullName]