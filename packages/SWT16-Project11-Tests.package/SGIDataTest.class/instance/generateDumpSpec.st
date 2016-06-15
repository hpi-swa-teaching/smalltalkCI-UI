utils
generateDumpSpec
	^ (SCIMetacelloLoadSpec new)
		baseline: 'SWT16Project11';
		directory: FileDirectory root;
		platforms: (#squeak,#sump,#sest)
