
#import <Cordova/AdjustUINative.h>

@interface AdjustUINative : AdjustNativeUI

- (void)sendMessageToNativeAndBack:(CDVInvokedUrlCommand*)command;

@end