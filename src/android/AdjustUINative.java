package cordova-plugin-adjust-ui-native;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * This class echoes a string called from JavaScript.
 */
public class AdjustUINative extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("sendMessageToNativeAndBack")) {
            String message = args.getString(0);
            this.sendMessageToNativeAndBack(message, callbackContext);
            return true;
        }
        return false;
    }

    private void sendMessageToNativeAndBack(String message, CallbackContext callbackContext) {
        if (message != null && message.length() > 0) {
            callbackContext.success(message);
        } else {
            callbackContext.error("Expected one non-empty string argument.");
        }
    }

	// private void changeWebViewBgColor:(CDVInvokedUrlCommand*)command
	private void changeWebViewBgColor(Array<Integer> message) {
	{
    
		// float rbgRed = [[command.arguments objectAtIndex:0]  floatValue];
		// float rbgGreen = [[command.arguments objectAtIndex:1]  floatValue];
		// float rbgBlue = [[command.arguments objectAtIndex:2]  floatValue];
		// float rbgAlpha = [[command.arguments objectAtIndex:3]  floatValue];
		// 
		// [self.webView setBackgroundColor:[UIColor colorWithRed:rbgRed/255.0f green:rbgGreen/255.0f blue:rbgBlue/255.0f alpha:rbgAlpha]];
		// [self.webView setOpaque:NO];
		// 
		// // static int count = 0;
		// 
		// self.webView.scrollView.bounces = NO;
		// for (id subview in self.webView.subviews) {
		// 	// count = count + 1;
		// 	if ([[subview class] isSubclassOfClass: [UIScrollView class] ]) {
		// 		((UIScrollView *)subview).bounces = YES;
		// 	}
		// }

	}
}
