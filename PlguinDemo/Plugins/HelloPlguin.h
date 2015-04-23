//
//  HelloPlguin.h
//  PlguinDemo
//
//  Created by 尹现伟 on 15/4/21.
//
//

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>

@interface HelloPlguin : CDVPlugin

- (void)addBluetoothObserver:(CDVInvokedUrlCommand*)command;

@end
