initialize-release
open
	(SmalltalkCI isMetacelloInstalled)
	ifFalse: [self inform: 'Metacello not installed. Installing Metachello now.'.
			SmalltalkCISqueak installMetacello ].
	^ self new