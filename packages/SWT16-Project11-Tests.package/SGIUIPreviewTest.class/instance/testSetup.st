testing
testSetup
	| preview |
	preview := self setup.
	self
		assert: preview notNil;
		assert: preview model notNil.
	preview delete