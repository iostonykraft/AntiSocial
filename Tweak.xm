%hook CKConversation

- (bool)canLeave {
	return YES;
}

%end

%hook CKDetailsController

- (bool)_canLeaveConversation {
	return YES;
}

%end