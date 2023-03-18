import 'package:flutter/material.dart';
import 'package:realm_chat/state_util.dart';
import '../view/customer_vendor_detail_view.dart';

class CustomerVendorDetailController extends State<CustomerVendorDetailView> implements MvcController {
  static late CustomerVendorDetailController instance;
  late CustomerVendorDetailView view;

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