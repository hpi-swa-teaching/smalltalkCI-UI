testing
testCloseButtonAction
	| logic dialog |
	logic := self setup.
	self shouldnt: (dialog := logic closeButtonAction) raise: Error.
	dialog delete