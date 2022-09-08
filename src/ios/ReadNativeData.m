/********* ReadNativeData.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface ReadNativeData : CDVPlugin {
  // Member variables go here.
}

- (void)readlocalstorage:(CDVInvokedUrlCommand*)command;
@end

@implementation ReadNativeData

- (void)readlocalstorage:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString *param1 = [[command.arguments objectAtIndex:0] valueForKey:@"param1"];
 
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSString *textToLoad = [prefs stringForKey:param1];


    NSString *total = textToLoad;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:textToLoad];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
