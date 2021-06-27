#import "NativeAppTokenPlugin.h"
#if __has_include(<native_app_token/native_app_token-Swift.h>)
#import <native_app_token/native_app_token-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "native_app_token-Swift.h"
#endif

@implementation NativeAppTokenPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNativeAppTokenPlugin registerWithRegistrar:registrar];
}
@end
