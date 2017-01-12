

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AdjustUINative extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("sendMessageToNativeAndBack")) {
            String message = args.getString(0);
            this.sendMessageToNativeAndBack(message, callbackContext);
            return true;
        }
		if (action.equals("changeWebViewBgColor")) {
			// add func below
            return true;
        }
		if (action.equals("bounces")) {
            // boolean makeBounce = args.getString(0);
            // this.bounces(makeBounce, callbackContext);
			// add func below
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
}
