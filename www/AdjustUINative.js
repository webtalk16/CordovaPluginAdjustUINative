var exec = require('cordova/exec');

exports.sendMessageToNativeAndBack = function(arg0, success, error) {
    exec(success, error, "AdjustUINative", "sendMessageToNativeAndBack", [arg0]);
};
