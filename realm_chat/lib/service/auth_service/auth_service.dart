import 'package:realm/realm.dart';
import 'package:realm_chat/service/realm_service/realm_service.dart';

class AuthService {
  static User? currentUser;
  static Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      currentUser = await RealmService.app.logIn(
        Credentials.emailPassword(email, password),
      );
      return true;
    } on Exception catch (err) {
      print("$err");
      return false;
    }
  }

  static Future<bool> register({
    required String email,
    required String password,
  }) async {
    try {
      // currentUser = await RealmService.app.logIn(
      //   Credentials.emailPassword(email, password),
      // );
      final emailPwCredentials = Credentials.emailPassword(email, password);
      await RealmService.app.logIn(emailPwCredentials);
      return true;
    } on Exception catch (err) {
      print("$err");
      return false;
    }
  }

  static Future logout() async {
    await RealmService.app.removeUser(AuthService.currentUser!);
  }

  static bool get isLoggedIn {
    bool isLoggedIn = RealmService.app.currentUser != null;
    if (isLoggedIn) {
      AuthService.currentUser = RealmService.app.currentUser;
    }
    return isLoggedIn;
  }
}
