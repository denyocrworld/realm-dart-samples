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

  String email = "demo@app.com";
  String password = "123456";
  doLogin() async {
    showLoading();
    bool isLoggedIn = await AuthService.login(
      email: email,
      password: password,
    );

    if (!isLoggedIn) {
      hideLoading();
      showInfoDialog("Wrong email or password!");
      return;
    }

    hideLoading();
    Get.offAll(const CustomerMainNavigationView());
  }

  doSignUp() async {
    showLoading();
    try {
      await AuthService.register(
        email: email,
        password: password,
      );
      await AuthService.login(
        email: email,
        password: password,
      );
      hideLoading();
      Get.offAll(const CustomerMainNavigationView());
    } on Exception {
      hideLoading();
      showInfoDialog("Wrong email or password!");
      return;
    }
  }

  bool signUpMode = false;

  updateMode() {
    signUpMode = !signUpMode;
    setState(() {});
  }
}
