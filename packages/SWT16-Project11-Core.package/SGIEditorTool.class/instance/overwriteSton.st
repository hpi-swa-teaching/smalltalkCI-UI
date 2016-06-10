user interface
overwriteSton 
	self saveDialog delete.
	self saveDialog: nil.
	(FileDirectory on: self path) deleteFileNamed: self fileName. 
	self  saveSton