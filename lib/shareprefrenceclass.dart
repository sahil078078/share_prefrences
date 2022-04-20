import 'package:shared_preferences/shared_preferences.dart';

class SharePref {
  static late SharedPreferences _sharedPreferences;

  init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  String get getName => _sharedPreferences.getString("Name") ?? "";

  set getName(String value) {
    _sharedPreferences.setString("Name", value);
  }
}

final sharedPrefs = SharePref();
