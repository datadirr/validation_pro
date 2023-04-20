import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:validation_pro/validation_pro_method_channel.dart';

void main() {
  MethodChannelValidationPro platform = MethodChannelValidationPro();
  const MethodChannel channel = MethodChannel('validation_pro');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
