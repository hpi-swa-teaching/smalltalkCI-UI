functionality
testSaveButtonAction
	| tool |
	tool := self setup.
	self shouldnt: tool saveButtonAction raise: Error.