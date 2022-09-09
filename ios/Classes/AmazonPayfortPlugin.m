#import "AmazonPayfortPlugin.h"
#if __has_include(<amazon_payfort/amazon_payfort-Swift.h>)
#import <amazon_payfort/amazon_payfort-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "amazon_payfort-Swift.h"
#endif

@implementation AmazonPayfortPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAmazonPayfortPlugin registerWithRegistrar:registrar];
}
@end
