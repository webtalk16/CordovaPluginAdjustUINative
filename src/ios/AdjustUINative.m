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
    CDVPluginResult* pluginResult = nil;
    
	float rbgRed = [command.arguments objectAtIndex:0];
	float rbgGreen = [command.arguments objectAtIndex:1];
	float rbgBlue = [command.arguments objectAtIndex:2];
	float rbgAlpha = [command.arguments objectAtIndex:3];

    if (rbgRed != nil && rbgGreen != nil && rbgBlue != nil && rbgAlpha != nil) {
		[self.webView setBackgroundColor:[UIColor colorWithRed:rbgRed/255.0f green:rbgGreen/255.0f blue:rbgBlue/255.0f alpha:rbgAlpha];
		[self.webView setOpaque:NO];
    }
}

- (void)alertInfoFromNative:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    
	NSString *echo = NSStringFromClass([self class]);

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

	[self.webView setBackgroundColor:[UIColor colorWithRed:66.0f/255.0f
                green:95.0f/255.0f
                 blue:156.0f/255.0f
                alpha:1.0f]];
	[self.webView setOpaque:NO];
}



@end
