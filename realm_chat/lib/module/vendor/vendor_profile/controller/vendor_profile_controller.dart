import 'package:flutter/material.dart';
import 'package:realm_chat/state_util.dart';
import '../../../../service/auth_service/auth_service.dart';
import '../../../login/view/login_view.dart';
import '../view/vendor_profile_view.dart';

class VendorProfileController extends State<VendorProfileView>
    implements MvcController {
  static late VendorProfileController instance;
  late VendorProfileView view;

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
