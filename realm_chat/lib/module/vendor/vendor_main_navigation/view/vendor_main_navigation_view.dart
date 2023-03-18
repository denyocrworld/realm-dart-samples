import 'package:flutter/material.dart';
import 'package:realm_chat/core.dart';
import '../controller/vendor_main_navigation_controller.dart';

class VendorMainNavigationView extends StatefulWidget {
  const VendorMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, VendorMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("VendorMainNavigation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<VendorMainNavigationView> createState() => VendorMainNavigationController();
}