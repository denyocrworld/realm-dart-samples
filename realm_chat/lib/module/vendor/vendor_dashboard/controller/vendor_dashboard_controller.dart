import 'package:flutter/material.dart';
import 'package:realm_chat/state_util.dart';
import '../view/vendor_dashboard_view.dart';

class VendorDashboardController extends State<VendorDashboardView> implements MvcController {
  static late VendorDashboardController instance;
  late VendorDashboardView view;

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