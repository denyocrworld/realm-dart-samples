import 'package:flutter/material.dart';
import 'package:realm_chat/core.dart';
import '../controller/customer_order_detail_controller.dart';

class CustomerOrderDetailView extends StatefulWidget {
  const CustomerOrderDetailView({Key? key}) : super(key: key);

  Widget build(context, CustomerOrderDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CustomerOrderDetail"),
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
  State<CustomerOrderDetailView> createState() => CustomerOrderDetailController();
}