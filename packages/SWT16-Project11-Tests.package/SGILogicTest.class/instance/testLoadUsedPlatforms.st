testing
testLoadUsedPlatforms
	| logicObject |
	logicObject := self testPlatformChoosing.
	self assert: (logicObject loadUsedPlatforms) size = 3