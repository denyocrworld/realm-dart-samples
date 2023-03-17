import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import 'package:realm_chat/core.dart';

class LoginController extends State<LoginView> implements MvcController {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "demo@app.com";
  String password = "123456";
  doLogin() async {
    bool isLoggedIn = await AuthService.login(
      email: email,
      password: password,
    );

    if (!isLoggedIn) {
      showInfoDialog("Wrong email or password!");
      return;
    }

    Get.offAll(const MainNavigationView());
  }

  doSignUp() async {
    try {
      EmailPasswordAuthProvider authProvider =
          EmailPasswordAuthProvider(RealmService.app);
      await authProvider.registerUser(email, password);
      await AuthService.login(
        email: email,
        password: password,
      );
      Get.offAll(const MainNavigationView());
    } on Exception {
      showInfoDialog("Wrong email or password!");
      return;
    }
  }
}
