module.exports.sendMessageToNativeAndBack = function (success, error, args) {
    if (args.length == 0 || args[0] < 0) {
        // Invalid call to the plugin, so return an error condition
        error('Invalid value for minutes argument');
        return;
    }
    success(args[0]);
}