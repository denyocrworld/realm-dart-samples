import 'package:flutter/material.dart';
import 'package:realm_chat/state_util.dart';
import '../../../../service/auth_service/auth_service.dart';
import '../../../login/view/login_view.dart';
import '../view/customer_profile_view.dart';

class CustomerProfileController extends State<CustomerProfileView>
    implements MvcController {
  static late CustomerProfileController instance;
  late CustomerProfileView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doLogout() async {
    await AuthService.logout();
    Get.offAll(const LoginView());
  }
}
