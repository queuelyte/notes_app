import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceController extends GetxController {
  SharedPreferences? _prefs;

  // Shared Preferences keys
  static const String userId = "USERID";
  static const String userEmail = "USEREMAIL";
  static const String name = "NAME";
  static const String isLoggedIn = "ISLOGGEDIN";

  @override
  void onInit() async {
    _prefs = await SharedPreferences.getInstance();
    super.onInit();
  }

  // save user email in shared preferences
  void saveUserEmail(String email) {
    _prefs!.setString(userEmail, email);
  }

  // save name of user
  void saveName(String username) {
    _prefs!.setString(name, username);
  }

  // save user id
  void saveUserId(String uid) {
    _prefs!.setString(userId, uid);
  }

  // save logged in state
  void saveIsLoggedIn(bool val) {
    _prefs!.setBool(isLoggedIn, val);
  }

  // Getting the stored values from the shared preferences
  bool? get isUserLoggedIn => _prefs!.getBool(isLoggedIn);
  String? get getUserId => _prefs!.getString(userId);
  String? get getUserName => _prefs!.getString(name);
  String? get getUserEmail => _prefs!.getString(userEmail);
}
