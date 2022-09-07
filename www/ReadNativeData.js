var exec = require('cordova/exec');

module.exports.readlocalstorage = function (arg0, success, error)
{
    exec(success,error, 'ReadNativeData', 'readlocalstorage', [arg0]);
}

