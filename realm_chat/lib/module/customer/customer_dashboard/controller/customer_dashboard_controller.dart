import 'package:flutter/material.dart';
import 'package:realm_chat/state_util.dart';
import '../view/customer_dashboard_view.dart';

class CustomerDashboardController extends State<CustomerDashboardView> implements MvcController {
  static late CustomerDashboardController instance;
  late CustomerDashboardView view;

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