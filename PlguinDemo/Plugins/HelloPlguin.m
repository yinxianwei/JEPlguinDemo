//
//  HelloPlguin.m
//  PlguinDemo
//
//  Created by 尹现伟 on 15/4/21.
//
//

#import "HelloPlguin.h"

@implementation HelloPlguin


- (void)addBluetoothObserver:(CDVInvokedUrlCommand*)command{
    
    NSLog(@"成功的调用了插件");
    
    NSString *content = nil;
    CDVPluginResult* pluginResult = nil;

    if (command.arguments.count) {
        content = command.arguments[0];
    }
    
    if ([content isEqualToString:@"HelloPlguin"]) {
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString: @"参数正确"];
    }
    else{
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString: @"参数错误"];

    }
    [pluginResult setKeepCallbackAsBool:YES];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    
    
    
    [self sendMessage2CallbackID:command.callbackId];

    [self sendMessage2CallbackID:command.callbackId];
}

- (void)sendMessage2CallbackID:(NSString *)callbackid{
    
    CDVPluginResult* pluginResult2 = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString: @"第二次验证"];
    [pluginResult2 setKeepCallbackAsBool:YES];
    [self.commandDelegate sendPluginResult:pluginResult2 callbackId:callbackid];

}


@end
