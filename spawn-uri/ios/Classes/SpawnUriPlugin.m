#import "SpawnUriPlugin.h"
#if __has_include(<spawn_uri/spawn_uri-Swift.h>)
#import <spawn_uri/spawn_uri-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "spawn_uri-Swift.h"
#endif

@implementation SpawnUriPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSpawnUriPlugin registerWithRegistrar:registrar];
}
@end
