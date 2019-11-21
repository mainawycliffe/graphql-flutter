import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_cache_hive/graphql_cache_hive.dart';

void main() {
  const MethodChannel channel = MethodChannel('graphql_cache_hive');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await GraphqlCacheHive.platformVersion, '42');
  });
}
