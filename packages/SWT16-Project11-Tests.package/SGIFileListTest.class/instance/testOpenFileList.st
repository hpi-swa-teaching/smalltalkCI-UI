running
testOpenFileList 
	| window fileList |
	window := SGIFileList morphicViewFolderSelector.
	fileList := window model.
	window openInWorld: self currentWorld extent: 300@400.
	fileList fileListIndex: 1.
	window delete.
	self assert: fileList getSelectedDirectory withoutListWrapper isNil.
	fileList okHit