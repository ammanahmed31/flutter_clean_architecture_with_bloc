abstract class StorageService<T> {
  Future<void> write(String key, T value);

  Future<T?> read(String key);

  Future<void> delete(String key);

  Future<void> clear();
}
