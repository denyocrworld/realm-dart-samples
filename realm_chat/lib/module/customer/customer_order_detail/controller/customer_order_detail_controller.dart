import 'package:flutter/material.dart';
import 'package:realm_chat/state_util.dart';
import '../view/customer_order_detail_view.dart';

class CustomerOrderDetailController extends State<CustomerOrderDetailView> implements MvcController {
  static late CustomerOrderDetailController instance;
  late CustomerOrderDetailView view;

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