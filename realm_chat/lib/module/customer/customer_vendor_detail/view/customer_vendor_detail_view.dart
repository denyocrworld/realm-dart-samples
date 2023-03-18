import 'package:flutter/material.dart';
import 'package:realm_chat/core.dart';

class CustomerVendorDetailView extends StatefulWidget {
  const CustomerVendorDetailView({Key? key}) : super(key: key);

  Widget build(context, CustomerVendorDetailController controller) {
    controller.view = this;

    /*
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Pending",
              ),
              Tab(
                text: "Ongoing",
              ),
              Tab(
                text: "Done",
              ),
            ],
          ),
          title: Text('Order List'),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.red[100],
            ),
            Container(
              color: Colors.green[100],
            ),
            Container(
              color: Colors.blue[100],
            ),
          ],
        ),
      ),
    );
    */
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://images.unsplash.com/photo-1621605815971-fbc98d665033?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                fit: BoxFit.cover,
              ),
              titlePadding: const EdgeInsets.all(0.0),
              title: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "The Classic Cut",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Dallas, 3256 Emeral Street, Texas",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemSize: 12.0,
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(12.0),
              width: MediaQuery.of(context).size.width,
              child: Builder(builder: (context) {
                List menus = [
                  {
                    "icon": MdiIcons.web,
                    "label": "Website",
                    "ontap": () {},
                  },
                  {
                    "icon": MdiIcons.phone,
                    "label": "Call now",
                    "ontap": () {},
                  },
                  {
                    "icon": MdiIcons.mapMarker,
                    "label": "Direction",
                    "ontap": () {},
                  },
                  {
                    "icon": MdiIcons.share,
                    "label": "Share",
                    "ontap": () {},
                  }
                ];
                return Row(
                  children: List.generate(
                    menus.length,
                    (index) {
                      var item = menus[index];
                      return Expanded(
                        child: InkWell(
                          onTap: () => item["ontap"](),
                          child: Column(
                            children: [
                              Icon(
                                item["icon"],
                                size: 24.0,
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                item["label"],
                                style: const TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              }),
            ),
          ),
          const SliverToBoxAdapter(
            child: IndexedStackNavigation(
              menuItems: [
                {
                  "label": "About",
                },
                {
                  "label": "Services",
                },
                {
                  "label": "Galleries",
                },
                {
                  "label": "Reviews",
                }
              ],
              children: [
                CustomerVendorAboutView(),
                CustomerVendorServiceView(),
                CustomerVendorGalleryView(),
                CustomerVendorReviewView(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 64,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
          ),
          onPressed: () => Get.to(const CustomerOrderDetailView()),
          child: const Text("Book"),
        ),
      ),
    );
  }

  @override
  State<CustomerVendorDetailView> createState() =>
      CustomerVendorDetailController();
}
