import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'validation_pro_method_channel.dart';

abstract class ValidationProPlatform extends PlatformInterface {
  /// Constructs a ValidationProPlatform.
  ValidationProPlatform() : super(token: _token);

  static final Object _token = Object();

  static ValidationProPlatform _instance = MethodChannelValidationPro();

  /// The default instance of [ValidationProPlatform] to use.
  ///
  /// Defaults to [MethodChannelValidationPro].
  static ValidationProPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ValidationProPlatform] when
  /// they register themselves.
  static set instance(ValidationProPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
