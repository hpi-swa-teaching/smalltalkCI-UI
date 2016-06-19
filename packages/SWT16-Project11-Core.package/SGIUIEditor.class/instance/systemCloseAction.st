interface-actions
systemCloseAction
	self okToClose
	ifFalse: [self logic closeButtonAction]