import 'package:get/get.dart';
import 'package:untitled/users/model/user.dart';
import 'package:untitled/users/userPreferences/user_preferences.dart';

class CurrentUser extends GetxController
{
  Rx<User> _currentUser = User(0, '', '', '').obs;

  User get user => _currentUser.value;

  getUserInfo() async
  {
    User? getUserInfoFromLocalStorage = await RememberUserPrefs.readUserInfo() ;
    _currentUser.value = getUserInfoFromLocalStorage
  }
}