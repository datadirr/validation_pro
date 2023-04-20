import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'validation_pro_platform_interface.dart';

/// An implementation of [ValidationProPlatform] that uses method channels.
class MethodChannelValidationPro extends ValidationProPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('validation_pro');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
