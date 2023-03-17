import 'package:realm_chat/state_util.dart';
import 'package:flutter/material.dart';
import 'package:realm_chat/service/realm_service/realm_service.dart';

import 'module/login/view/login_view.dart';

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
      theme: ThemeData.dark(),
      home: const LoginView(),
    );
  }
}
