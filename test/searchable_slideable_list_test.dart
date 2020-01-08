import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:searchable_slideable_list/searchable_slideable_list.dart';

void main() {
  const MethodChannel channel = MethodChannel('searchable_slideable_list');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await SearchableSlideableList.platformVersion, '42');
  });
}
