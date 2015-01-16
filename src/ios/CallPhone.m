//
//  CallPhone.m
//  HelloCordova
//
//  Created by Mtel on 14-12-29.
//
//

#import "CallPhone.h"

@implementation CallPhone:CDVPlugin
- (void) dialPhone:(CDVInvokedUrlCommand *)command {
    
     NSString *ph = [command.arguments objectAtIndex:0];//这是我JavaScripte 传来的数据；
     CDVPluginResult* result;//定义：要向JavaScript 返回的结果；
    UIDevice *device = [UIDevice currentDevice];
    if ([[device model] isEqualToString:@"iPhone"] ) {
        // Success Callback 成功 返回成功时的数据；
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"我返回的数据"];
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@", ph]]];
        
        //[self writeJavascript:[result toSuccessCallbackString:command.callbackId]];//version=3.6
        [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];//version =4.0
        
    } else {
        // Error Callback
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"error"];
        [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];//version =4.0
        //[self writeJavascript:[result toErrorCallbackString:command.callbackId]];//version=3.6
    }
    
}

@end
