//var exec = require('cordova/exec');

//exports.sendMessageToNativeAndBack = function(arg0, success, error) {
window.sendMessageToNativeAndBack = function (argsArray, success, error) {
    cordova.exec(success, error, "AdjustUINative", "sendMessageToNativeAndBack", argsArray);
};

window.changeWebViewBgColor = function (argsArray) {
    cordova.exec(null, null, "AdjustUINative", "changeWebViewBgColor", argsArray);
};

window.alertInfoFromNative = function (alertCallback) {
    cordova.exec(alertCallback, null, "AdjustUINative", "alertInfoFromNative", []);
};

window.sendMessageToNativeAndBack2 = function (argsArray, success, error) {
    cordova.exec(success, error, "AdjustUINative", "sendMessageToNativeAndBack2", argsArray);
};
