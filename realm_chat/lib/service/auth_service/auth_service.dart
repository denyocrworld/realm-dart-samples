import 'package:realm/realm.dart';
import 'package:realm_chat/service/realm_service/realm_service.dart';

class AuthService {
  static User? user;
  static Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      user = await RealmService.app.logIn(
        Credentials.emailPassword(email, password),
      );
      return true;
    } on Exception catch (err) {
      print("$err");
      return false;
    }
  }
}
