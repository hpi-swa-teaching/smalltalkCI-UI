testing
testPreviewButtonAction
	| logic preview |
	logic := self setup.
	self shouldnt: (preview := logic previewButtonAction) raise: Error.
	preview delete