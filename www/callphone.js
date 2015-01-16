var CallPhone = function() {};

CallPhone.prototype.dialphone = function(success, fail,message) {
    cordova.exec(success, fail, "CallPhone","dialPhone", [message]);
};

var callphone = new CallPhone();
module.exports = callphone;