
#import <Cordova/CDVPlugin.h>

@interface AdjustUINative : CDVPlugin

	- (void)sendMessageToNativeAndBack:(CDVInvokedUrlCommand*)command;
	- (void)changeWebViewBgColor:(CDVInvokedUrlCommand*)command;

@end