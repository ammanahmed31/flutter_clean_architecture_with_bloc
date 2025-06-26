import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../logger/logger.dart';
import 'storage_service.dart';

class FlutterSecureStorageService<T> extends StorageService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  @override
  Future<T?> read(String key) async {
    try {
      final encodedValue = await _storage.read(key: key);
      if (encodedValue == null) return null;
      return jsonDecode(encodedValue) as T?;
    } catch (e, s) {
      Log.e(runtimeType, e.toString(), s);
      return null;
    }
  }

  @override
  Future<void> write(String key, dynamic value) async {
    try {
      final encodedValue = jsonEncode(value);
      await _storage.write(key: key, value: encodedValue);
    } catch (e, s) {
      Log.e(runtimeType, e.toString(), s);
    }
  }

  @override
  Future<void> clear() => _storage.deleteAll();

  @override
  Future<void> delete(String key) => _storage.delete(key: key);
}
