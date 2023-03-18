import 'package:flutter/material.dart';
import 'package:realm_chat/core.dart';
import '../controller/customer_vendor_about_controller.dart';

class CustomerVendorAboutView extends StatefulWidget {
  const CustomerVendorAboutView({Key? key}) : super(key: key);

  Widget build(context, CustomerVendorAboutController controller) {
    controller.view = this;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "About us",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<CustomerVendorAboutView> createState() =>
      CustomerVendorAboutController();
}
