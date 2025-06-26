import 'package:flutter/foundation.dart';

@immutable
class Config {
  const Config._();
  // Configuration settings can be added here
  // For example, API endpoints, feature flags, etc.

  // Example of a configuration setting
  static const String baseUrl = String.fromEnvironment('BASE_URL', defaultValue: 'https://api.example.com');
}
