//var exec = require('cordova/exec');

//exports.sendMessageToNativeAndBack = function(arg0, success, error) {
window.sendMessageToNativeAndBack = function (argsArray, success, error) {
    cordova.exec(success, error, "AdjustUINative", "sendMessageToNativeAndBack", argsArray);
};

window.changeWebViewBgColor = function (argsArray, callback) {
    cordova.exec(callback, callback, "AdjustUINative", "changeWebViewBgColor", argsArray);
};

window.bounces = function (argsArray, callback) {
    cordova.exec(callback, callback, "AdjustUINative", "bounces", argsArray);
};
