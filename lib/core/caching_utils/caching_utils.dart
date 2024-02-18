import 'dart:convert';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CachingUtils {
  static const String _cachingUserKey = 'logged_user';
  static const String _cachingTokenKey = 'token';

  static late SharedPreferences _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Patient? get user {
    if (_sharedPreferences.containsKey(_cachingUserKey)) {
      return Patient.fromJson(
          jsonDecode(_sharedPreferences.getString(_cachingUserKey)!));
    }
    return null;
  }

  static Future<void> cacheUser(Map<String, dynamic> value) async {
    await _sharedPreferences.setString(_cachingUserKey, jsonEncode(value));
  }

  static Future<void> cacheToken(String value) async {
    await _sharedPreferences.setString(_cachingTokenKey, value);
  }

  static Future<void> clearCache() async {
    await _sharedPreferences.remove(_cachingUserKey);
    await _sharedPreferences.remove(_cachingTokenKey);
  }

  static bool get isLogged {
    return user != null && token != null;
  }

  static String? get token {
    return _sharedPreferences.getString(_cachingTokenKey);
  }
}
