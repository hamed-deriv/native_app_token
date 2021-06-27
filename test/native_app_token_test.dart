import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:native_app_token/native_app_token.dart';

void main() {
  const MethodChannel channel = MethodChannel('native_app_token');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(
    () => channel.setMockMethodCallHandler(
        (MethodCall methodCall) async => 'native_get_app_token'),
  );

  tearDown(() => channel.setMockMethodCallHandler(null));

  test('getPlatformVersion', () => expect(getAppToken, 'native_get_app_token'));
}
