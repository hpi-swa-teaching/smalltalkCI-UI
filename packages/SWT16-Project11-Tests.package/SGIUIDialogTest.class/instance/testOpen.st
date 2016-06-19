testing
testOpen
	| dialog |
	self shouldnt: (dialog := self open) raise: Error.
	dialog delete