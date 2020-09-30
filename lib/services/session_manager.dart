import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  // AccessTokenResponse object
  String keyAccessToken = "access_token";

  // User object
  String keyUser = "user";

  SharedPreferences _preferences;

  init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  void saveToDisk<T>(String key, T content) {
    if (content is String) {
      _preferences.setString(key, content);
    }
    if (content is bool) {
      _preferences.setBool(key, content);
    }
    if (content is int) {
      _preferences.setInt(key, content);
    }
    if (content is double) {
      _preferences.setDouble(key, content);
    }
    if (content is List<String>) {
      _preferences.setStringList(key, content);
    }
  }

  getFromDisk<T>(String key, Object defaultValue) {
    if (defaultValue is int) {
      return _preferences.getInt(key) == null ? defaultValue : _preferences.getInt(key);
    } else if (defaultValue is bool) {
      return _preferences.getBool(key) == null ? defaultValue : _preferences.getBool(key);
    } else if (defaultValue is String) {
      return _preferences.getString(key) == null ? defaultValue : _preferences.getString(key);
    }
  }

  clearStorage() {
    _preferences.clear();
  }
}
