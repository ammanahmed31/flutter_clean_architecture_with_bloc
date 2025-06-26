import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../logger/logger.dart';
import 'storage_service.dart';

class SharedPrefService<T> extends StorageService {
  Future<SharedPreferences> _prefs() => SharedPreferences.getInstance();

  @override
  Future<T?> read(String key) async {
    try {
      final prefs = await _prefs();
      final encodedValue = prefs.getString(key);
      if (encodedValue == null) return null;
      return jsonDecode(encodedValue) as T?;
    } catch (e, s) {
      Log.e(runtimeType, e.toString(), s);
      return null;
    }
  }

  @override
  Future<void> write(String key, value) async {
    try {
      final prefs = await _prefs();
      final encodedValue = jsonEncode(value);
      prefs.setString(key, encodedValue);
    } catch (e, s) {
      Log.e(runtimeType, e.toString(), s);
    }
  }

  @override
  Future<void> delete(String key) => _prefs().then((prefs) => prefs.remove(key));

  @override
  Future<void> clear() => _prefs().then((prefs) => prefs.clear());
}
