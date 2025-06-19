import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class BEnvironment {
  static String get fileName {
    if (kReleaseMode) {
      return '.env.production';
    }

    return '.env.development';
  }
  /// Return the API key from the environment variables.
  static String get apiKey {
    return dotenv.env['API_KEY'] ?? 'API_KEY not found';
  }
  /// Return the base URL for the App from the environment variables.
  static String get appBaseUrl {
    return dotenv.env['API_BASE_URL'] ?? 'API_BASE_URL not found';
  }
  /// Return the google api key from the environment variables.
  static String get googleApiKey {
    return dotenv.env['MAPS_API_KEY'] ?? 'MAPS_API_KEY not found';
  }

}
