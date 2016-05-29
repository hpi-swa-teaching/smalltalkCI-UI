user interface
overwriteSton 
	self saveDialog delete.
	(FileDirectory on: self path) deleteFileNamed: self fileName. 
	self  saveSton