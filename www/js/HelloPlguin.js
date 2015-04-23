//调用IOS方法插件
var HelloPlguin = {
    /**
     * 注册通知方法
     * @param method 要调用IOS插件的方法名
     * @param parameter 参数[数组]
     * @param success 成功回调
     * @param fail 失败回调
     * @returns {*}
     */
    addBluetoothObserver: function(method, parameter, success, fail) {
        return Cordova.exec(success, fail, "addBluetoothObserver", method, parameter);
    },
        
};