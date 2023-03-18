import 'package:flutter/material.dart';
import 'package:realm_chat/state_util.dart';
import '../view/customer_vendor_about_view.dart';

class CustomerVendorAboutController extends State<CustomerVendorAboutView> implements MvcController {
  static late CustomerVendorAboutController instance;
  late CustomerVendorAboutView view;

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