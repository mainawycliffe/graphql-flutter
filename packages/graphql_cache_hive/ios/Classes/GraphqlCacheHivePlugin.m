#import "GraphqlCacheHivePlugin.h"
#import <graphql_cache_hive/graphql_cache_hive-Swift.h>

@implementation GraphqlCacheHivePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGraphqlCacheHivePlugin registerWithRegistrar:registrar];
}
@end
