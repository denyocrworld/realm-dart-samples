import 'package:flutter/material.dart';
import 'package:realm_chat/state_util.dart';
import '../view/customer_vendor_gallery_view.dart';

class CustomerVendorGalleryController extends State<CustomerVendorGalleryView> implements MvcController {
  static late CustomerVendorGalleryController instance;
  late CustomerVendorGalleryView view;

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