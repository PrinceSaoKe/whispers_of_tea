import 'package:shared_preferences/shared_preferences.dart';

class AppData {
  /// 在设备中存入一个`String`
  static Future<bool> setString(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, value);
  }

  /// 从设备中读取`key`对应的`String`，若不存在该值则返回`null`
  static Future<String?> getString(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  /// 在设备中存入一个`int`
  static Future<bool> setInt(String key, int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(key, value);
  }

  /// 从设备中读取`key`对应的`int`，若不存在该值则返回`null`
  static Future<int?> getInt(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  /// 在设备中存入一个`double`
  static Future<bool> setDouble(String key, double value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setDouble(key, value);
  }

  /// 从设备中读取`key`对应的`double`，若不存在该值则返回`null`
  static Future<double?> getgetDoubleInt(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key);
  }

  /// 在设备中存入一个`bool`
  static Future<bool> setBool(String key, bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool(key, value);
  }

  /// 从设备中读取`key`对应的`bool`，若不存在该值则返回`null`
  static Future<bool?> getBool(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  /// 在设备中存入一个`List<String>`
  static Future<bool> setStringList(String key, List<String> stringList) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setStringList(key, stringList);
  }

  /// 从设备中读取`key`对应的`List<String>`，若不存在该值则返回`null`
  static Future<List<String>?> getStringList(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key);
  }

  static String token = 'token';
  static String userEmail = 'userEmail';
}
