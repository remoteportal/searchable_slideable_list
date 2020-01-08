#import "SearchableSlideableListPlugin.h"
#if __has_include(<searchable_slideable_list/searchable_slideable_list-Swift.h>)
#import <searchable_slideable_list/searchable_slideable_list-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "searchable_slideable_list-Swift.h"
#endif

@implementation SearchableSlideableListPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSearchableSlideableListPlugin registerWithRegistrar:registrar];
}
@end
