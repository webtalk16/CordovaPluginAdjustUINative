//var exec = require('cordova/exec');

alert("set sendMessageToNativeAndBack");
alert("set cordova == " + cordova);
alert("set cordova");
//exports.sendMessageToNativeAndBack = function(arg0, success, error) {
window.sendMessageToNativeAndBack = function(arg0, success, error) {
    cordova.exec(success, error, "AdjustUINative", "sendMessageToNativeAndBack", [arg0]);
};
alert("set sendMessageToNativeAndBack 2");
alert("set sendMessageToNativeAndBack == " + window.sendMessageToNativeAndBack);
