import 'package:communicare/constants/app_enums.dart';
import 'package:communicare/theme/app_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  static final AppSharedPreferences _instance =
      AppSharedPreferences._internal();
  late SharedPreferences _prefs;

  factory AppSharedPreferences() {
    return _instance;
  }

  AppSharedPreferences._internal();

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String getString(String key) {
    return _prefs.getString(key) ?? "";
  }

  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  Gender getGender() {
    String genderString = _prefs.getString(AppStrings.gender_key) ?? "Man";
    return genderString == AppStrings.man ? Gender.Man : Gender.Woman;
  }

  Future<bool> setGender(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  int getInt(String key) {
    return _prefs.getInt(key) ?? 0;
  }

  Future<bool> setInt(String key, int value) async {
    return await _prefs.setInt(key, value);
  }

  double getDouble(String key) {
    return _prefs.getDouble(key) ?? 0.0;
  }

  Future<bool> setDouble(String key, double value) async {
    return await _prefs.setDouble(key, value);
  }

  bool getBool(String key) {
    return _prefs.getBool(key) ?? false;
  }

  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  Future<bool> remove(String key) async {
    return await _prefs.remove(key);
  }
}
