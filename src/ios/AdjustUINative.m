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

	[self.webView setBackgroundColor:[UIColor colorWithRed:66.0f/255.0f
                green:95.0f/255.0f
                 blue:156.0f/255.0f
                alpha:1.0f]];
	[self.webView setOpaque:NO];
}






@end
