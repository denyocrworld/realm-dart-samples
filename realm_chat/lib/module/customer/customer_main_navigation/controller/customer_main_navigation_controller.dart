import 'package:flutter/material.dart';
import 'package:realm_chat/state_util.dart';
import '../view/customer_main_navigation_view.dart';

class CustomerMainNavigationController extends State<CustomerMainNavigationView>
    implements MvcController {
  static late CustomerMainNavigationController instance;
  late CustomerMainNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
