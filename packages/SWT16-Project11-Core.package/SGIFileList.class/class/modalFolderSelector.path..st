modal dialogs
modalFolderSelector: aDir path: aPath 
	| window fileModel |
	self refactoringNote: 'Kann fileModel nicht komplett raus?'.
	self path: aPath.
	window := self morphicViewFolderSelector: aDir.
	fileModel := window model.
	window openInWorld: self currentWorld extent: self modalFolderSelectorExtend.
	self modalLoopOn: window.
	^ fileModel getSelectedDirectory withoutListWrapper