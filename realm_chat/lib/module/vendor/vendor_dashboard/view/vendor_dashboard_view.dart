import 'package:flutter/material.dart';
import 'package:realm_chat/core.dart';
import '../controller/vendor_dashboard_controller.dart';

class VendorDashboardView extends StatefulWidget {
  const VendorDashboardView({Key? key}) : super(key: key);

  Widget build(context, VendorDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("VendorDashboard"),
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
  State<VendorDashboardView> createState() => VendorDashboardController();
}