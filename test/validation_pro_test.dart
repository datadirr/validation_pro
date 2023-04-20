import 'package:flutter_test/flutter_test.dart';
import 'package:validation_pro/validation_pro.dart';
import 'package:validation_pro/validation_pro_platform_interface.dart';
import 'package:validation_pro/validation_pro_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockValidationProPlatform
    with MockPlatformInterfaceMixin
    implements ValidationProPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ValidationProPlatform initialPlatform = ValidationProPlatform.instance;

  test('$MethodChannelValidationPro is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelValidationPro>());
  });

  test('getPlatformVersion', () async {
    ValidationPro validationProPlugin = ValidationPro();
    MockValidationProPlatform fakePlatform = MockValidationProPlatform();
    ValidationProPlatform.instance = fakePlatform;

    expect(await validationProPlugin.getPlatformVersion(), '42');
  });
}
