 static id __sb = nil;
 %hook SpringBoard
 -(void)applicationDidFinishLaunching: (id)application
 {
 	%orig;
 	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"HookTips" message:@"hook SpringBoard Success" delegate:self cancelButtonTitle:@"Thanks" otherButtonTitles:nil];
 	[alert show];
 	[alert release];
 }

 - (id)init
 {
     __sb = self;
     return %orig;
 }

 - (void)alertView: (UIAlertView *)alertView clickedButtonAtIndex: (NSInteger)buttonIndex
 {

 }

 %new( @@: )
 + (id)sharedBoard
 {
 	return __sb;
 }
 %end