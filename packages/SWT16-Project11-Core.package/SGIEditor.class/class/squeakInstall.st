initialize-release
squeakInstall
	(TheWorldMenu respondsTo: #registerOpenCommand:) ifTrue: [
		TheWorldMenu unregisterOpenCommand: SGIUIEditor sgiLabel.
		TheWorldMenu registerOpenCommand: { SGIUIEditor sgiLabel. { SGIEditor. #open } } ].
	self inform: 'Sucessfully added to Apps'