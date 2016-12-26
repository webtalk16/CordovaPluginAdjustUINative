/********* AdjustUINative.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>



@interface AdjustUINative : CDVPlugin 
{
  // Member variables go here.
}

- (void)sendMessageToNativeAndBack:(CDVInvokedUrlCommand*)command;

@end




@implementation AdjustUINative

- (void)sendMessageToNativeAndBack:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    
	NSString *echo = NSStringFromClass([self class]);

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

	[self.webView setBackgroundColor:[UIColor purpleColor]];
	[self.webView setOpaque:NO];
}






@end
