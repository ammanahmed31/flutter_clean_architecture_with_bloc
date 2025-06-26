import '../../constants/pref_constants.dart';
import 'shared_pref_service.dart';

class TokenStorage {
  static final SharedPrefService<String> _sharedPrefService = SharedPrefService<String>();

  static Future<void> saveTokens(String accessToken, String refreshToken) async {
    await _sharedPrefService.write(SharedPrefConstants.accessTokenKey, accessToken);
    await _sharedPrefService.write(SharedPrefConstants.refreshTokenKey, refreshToken);
  }

  static Future<String?> getAccessToken() async {
    return await _sharedPrefService.read(SharedPrefConstants.accessTokenKey);
  }

  static Future<String?> getRefreshToken() async {
    return await _sharedPrefService.read(SharedPrefConstants.refreshTokenKey);
  }

  static Future<void> clearTokens() async {
    await _sharedPrefService.delete(SharedPrefConstants.accessTokenKey);
    await _sharedPrefService.delete(SharedPrefConstants.refreshTokenKey);
  }
}
