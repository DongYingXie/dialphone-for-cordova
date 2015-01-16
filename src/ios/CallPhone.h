//
//  CallPhone.h
//  HelloCordova
//
//  Created by Mtel on 14-12-29.
//
//
#import <Cordova/CDVPlugin.h>

@interface CallPhone : CDVPlugin
- (void) dialPhone:(CDVInvokedUrlCommand *)command;
@end
