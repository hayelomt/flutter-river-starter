import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorage {
  Future<bool> save(String key, String value);
  String? read(String key);
  Future<bool> delete(String key);
  Future<bool> clear();
}

class LocalStorageImpl implements LocalStorage {
  LocalStorageImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  @override
  Future<bool> save(String key, String value) {
    return sharedPreferences.setString(key, value);
  }

  @override
  String? read(String key) {
    return sharedPreferences.getString(key);
  }

  @override
  Future<bool> delete(String key) async {
    return sharedPreferences.remove(key);
  }

  @override
  Future<bool> clear() async {
    return sharedPreferences.clear();
  }
}
