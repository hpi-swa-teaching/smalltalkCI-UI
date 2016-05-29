modal dialogs
modalFolderSelector: aDir path: aPath
	| window fileModel |
	self path: aPath.
	window := self morphicViewFolderSelector: aDir.
	fileModel := window model.
	window openInWorld: self currentWorld extent: 300@400.
	self modalLoopOn: window.
	^ fileModel getSelectedDirectory withoutListWrapper