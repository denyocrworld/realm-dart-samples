import 'package:flutter/material.dart';
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

  String email = "";
  String password = "";
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
}
