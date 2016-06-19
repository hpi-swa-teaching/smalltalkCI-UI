testing
testSetup
	| logicObject |
	logicObject := self setup.
	logicObject 
		baseline: SGIDataTest defaultBaseline;
		configuration: SGIDataTest  defaultConfiguration;
		fileName: SGIDataTest defaultFileName;
		addLoadingSpec: SCIMetacelloLoadSpec new;
		package: SGIDataTest defaultPackage;
		path: SGIDataTest defaultPath;
		projectName: SGIDataTest defaultProjectName.
	self 
		assert: logicObject notNil;
		assert: logicObject baseline = SGIDataTest defaultBaseline;
		assert: logicObject configuration = SGIDataTest defaultConfiguration;
		assert: logicObject fileName = SGIDataTest defaultFileName;
		assert: logicObject loadingSpecs size = 1;
		assert: logicObject package = SGIDataTest defaultPackage;
		assert: logicObject path = SGIDataTest defaultPath;
		assert: logicObject projectName = SGIDataTest defaultProjectName