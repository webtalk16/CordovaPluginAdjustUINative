/********* AdjustUINative.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface AdjustUINative : CDVPlugin {
  // Member variables go here.
}

- (void)sendMessageToNativeAndBack:(CDVInvokedUrlCommand*)command;
- (void)changeWebViewBgColor:(CDVInvokedUrlCommand*)command;
@end

@implementation AdjustUINative

- (void)sendMessageToNativeAndBack:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
	NSString *echoViewName = NSStringFromClass([self class]);
    NSString *message = [command.arguments objectAtIndex:0];

    if (message != nil && [message length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:message];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)changeWebViewBgColor:(CDVInvokedUrlCommand*)command
{
    
	float rbgRed = [[command.arguments objectAtIndex:0]  floatValue];
	float rbgGreen = [[command.arguments objectAtIndex:1]  floatValue];
	float rbgBlue = [[command.arguments objectAtIndex:2]  floatValue];
	float rbgAlpha = [[command.arguments objectAtIndex:3]  floatValue];

	[self.webView setBackgroundColor:[UIColor colorWithRed:rbgRed/255.0f green:rbgGreen/255.0f blue:rbgBlue/255.0f alpha:rbgAlpha]];
	[self.webView setOpaque:NO];

	((UIScrollView *).bounces = NO;
	for (id subview in self.webView.subviews) {
		if ([[subview class] isSubclassOfClass: [UIScrollView class] ]) {
			((UIScrollView *)subview).bounces = YES;
		}
	}

}

//- (void)alertInfoFromNative:(CDVInvokedUrlCommand*)command
//{
//    CDVPluginResult* pluginResult = nil;
//	NSString *echo = NSStringFromClass([self class]);
//
//	pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
//
//	for (id subview in self.webView.subviews) {
//		echo = NSStringFromClass([subview class]);
//		if ([[subview class] isSubclassOfClass: [UIScrollView class] ]) {
//			pluginResult += [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
//		}
//	}
//
//	[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
//}

@end
