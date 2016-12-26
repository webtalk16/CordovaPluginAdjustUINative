//var exec = require('cordova/exec');

//exports.sendMessageToNativeAndBack = function(arg0, success, error) {
window.sendMessageToNativeAndBack = function(arg0, success, error) {
    cordova.exec(success, error, "AdjustUINative", "sendMessageToNativeAndBack", [arg0]);
};
