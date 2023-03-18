import 'package:flutter/material.dart';
import 'package:realm_chat/core.dart';
import '../controller/customer_vendor_gallery_controller.dart';

class CustomerVendorGalleryView extends StatefulWidget {
  const CustomerVendorGalleryView({Key? key}) : super(key: key);

  Widget build(context, CustomerVendorGalleryController controller) {
    controller.view = this;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.0,
              crossAxisCount: 4,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemCount: 8,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1622286342621-4bd786c2447c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: Column(
                  children: const [],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  State<CustomerVendorGalleryView> createState() =>
      CustomerVendorGalleryController();
}
