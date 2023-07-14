enum RunMode {
  debug,
  testing,
  release,
}

/// Environment configuration singleton
class AppConfig {
  /// The environment type of this instance.
  late final RunMode env;
  // Internal constructor
  AppConfig._internal();

  static final AppConfig _instance = AppConfig._internal();

  // Getter for the instance
  static AppConfig get instance => _instance;

  // late constructor to set the environment
  factory AppConfig([RunMode type = RunMode.debug]) {
    _instance.env = type;
    return _instance;
  }

  static bool get isDebug => _instance.env == RunMode.debug;
  static bool get isTesting => _instance.env == RunMode.testing;
  static bool get isRelease => _instance.env == RunMode.release;
}
