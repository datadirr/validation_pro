import 'validation_pro_platform_interface.dart';

class ValidationPro {
  Future<String?> getPlatformVersion() {
    return ValidationProPlatform.instance.getPlatformVersion();
  }
}
