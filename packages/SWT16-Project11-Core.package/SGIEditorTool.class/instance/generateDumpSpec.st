dump
generateDumpSpec
	| test |
	test := SCIMetacelloLoadSpec new.
	test
	baseline: 'SWT16Project11';
		directory: self path;
		platforms: (#squeak,#sump,#sest).
	
		self loadingSpecs add: test.