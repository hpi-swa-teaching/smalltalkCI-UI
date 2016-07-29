utils
overwriteSton
	(FileDirectory on: self path) deleteFileNamed: self fileName.
	self data saveSton