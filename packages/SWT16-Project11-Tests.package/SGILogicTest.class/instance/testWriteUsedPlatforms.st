testing
testWriteUsedPlatforms
	| logicObject |
	logicObject := self testPlatformChoosing.
	self
		assert: (logicObject writeUsedPlatforms) size = 3