#import "TurboJpegFfiPlugin.h"
#if __has_include(<turbo_jpeg_ffi/turbo_jpeg_ffi-Swift.h>)
#import <turbo_jpeg_ffi/turbo_jpeg_ffi-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "turbo_jpeg_ffi-Swift.h"
#endif

@implementation TurboJpegFfiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTurboJpegFfiPlugin registerWithRegistrar:registrar];
}
@end
