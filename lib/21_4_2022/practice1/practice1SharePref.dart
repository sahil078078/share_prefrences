import 'package:shared_preferences/shared_preferences.dart';

class MySharePref {
  static late SharedPreferences _sharedPreferences1;

  initialise1() async {
    _sharedPreferences1 = await SharedPreferences.getInstance();
  }

  String get getName => _sharedPreferences1.getString('Name') ?? "";
  set getName(String value) => _sharedPreferences1.setString("Name", value);
}

final SharePrefObj1 = MySharePref();
