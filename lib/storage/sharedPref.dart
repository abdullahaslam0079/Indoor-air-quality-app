

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs{
  static SharedPreferences? _sharedPrefs;
  factory SharedPrefs() => SharedPrefs._internal();
  SharedPrefs._internal();

  Future<void> init() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

  bool get isOnBoarded => _sharedPrefs!.getBool('isOnBoarded') ?? false;
  set isOnBoarded(bool value) {_sharedPrefs!.setBool('isOnBoarded', value);}

  clear()async{
    await _sharedPrefs!.clear();
  }
}