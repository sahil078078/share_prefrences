import 'package:shared_preferences/shared_preferences.dart';

class SharePref212 {
  static late SharedPreferences _sharedPreferences;
  // create a object of SharedPreferences BuildIn class

  initialize212() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  String get getName => _sharedPreferences.getString('Name') ?? "";
  set getName(String value) {
    _sharedPreferences.setString("Name", value);
  }

  remove() {
    _sharedPreferences.remove('Name');
  }

  Future<bool> remove2() async {
    bool removed = await _sharedPreferences.remove('Name');
    return removed;
  }
}

SharePref212 sharePref212obj = SharePref212();
