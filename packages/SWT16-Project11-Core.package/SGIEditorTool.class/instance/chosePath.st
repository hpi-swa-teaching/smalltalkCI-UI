chosing
chosePath
	| folder|
	folder:= FileList2 modalFolderSelector.
	folder ifNotNil: [
		folder := folder fullName.
		self path: folder.
		].