import 'package:flutter/material.dart';
import 'package:realm_chat/core.dart';
import 'package:realm_chat/service/message_service/message_service.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () async {
                MessageService.instance.add();
              },
              child: const Text("Create"),
            ),
            const Divider(),
            Expanded(
              child: StreamBuilder(
                stream: MessageService.instance.snapshot(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (snapshot.data == null) return Container();
                  var data = snapshot.data!;
                  var items = data.results;
                  return ListView.builder(
                    itemCount: items.length,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var item = items[index];
                      return Card(
                        child: ListTile(
                          onTap: () async {
                            MessageService.instance.delete(item);
                          },
                          title: Text(item.message),
                          subtitle: const Text("-"),
                          trailing: InkWell(
                            onTap: () {
                              MessageService.instance.update(item);
                            },
                            child: const Icon(
                              Icons.edit,
                              size: 24.0,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
