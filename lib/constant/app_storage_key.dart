class AppStorageKey {
  AppStorageKey._privateConstructor();
  static final AppStorageKey _instance = AppStorageKey._privateConstructor();
  static AppStorageKey get instance => _instance;

  final String token = "token";
  final String onboard = "onboard";
  final String userRole = "user_role";
  final String language = "language";
  final String country = "country";
}
