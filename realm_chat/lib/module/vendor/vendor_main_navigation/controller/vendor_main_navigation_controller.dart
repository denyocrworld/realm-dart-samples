import 'package:flutter/material.dart';
import 'package:realm_chat/state_util.dart';
import '../view/vendor_main_navigation_view.dart';

class VendorMainNavigationController extends State<VendorMainNavigationView> implements MvcController {
  static late VendorMainNavigationController instance;
  late VendorMainNavigationView view;

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