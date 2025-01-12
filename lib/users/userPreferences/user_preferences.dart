import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../model/user.dart';

class RememberUserPrefs
{
  //save User -Info
  static Future<void> saveRememberUser (User userInfo) async
  {
    SharedPreferences preferences = await SharedPreferences.getInstance();
     String userJsonData = jsonEncode(userInfo.toJson());
     await preferences.setString("currentUser", userJsonData);
  }
}
