import 'package:realm_chat/state_util.dart';
import 'package:realm_chat/core.dart';
import 'package:flutter/material.dart';

/*
Kelas Online Dart & Flutter
! Buka: capekngoding.com
? Ada harga Flash Sale hari ini
*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  RealmService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: AuthService.isLoggedIn
          ? const CustomerMainNavigationView()
          : const LoginView(),
    );
  }
}
