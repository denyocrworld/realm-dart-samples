import 'package:flutter/material.dart';
import 'package:realm_chat/state_util.dart';
import '../view/customer_vendor_service_view.dart';

class CustomerVendorServiceController extends State<CustomerVendorServiceView> implements MvcController {
  static late CustomerVendorServiceController instance;
  late CustomerVendorServiceView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}