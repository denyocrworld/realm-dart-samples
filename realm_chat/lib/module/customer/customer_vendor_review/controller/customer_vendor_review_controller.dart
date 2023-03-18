import 'package:flutter/material.dart';
import 'package:realm_chat/state_util.dart';
import '../view/customer_vendor_review_view.dart';

class CustomerVendorReviewController extends State<CustomerVendorReviewView> implements MvcController {
  static late CustomerVendorReviewController instance;
  late CustomerVendorReviewView view;

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