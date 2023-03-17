import 'package:flutter/material.dart';
import 'package:realm_chat/core.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          IconButton(
            onPressed: () => controller.doLogout(),
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    AuthService.currentUser!.profile.pictureUrl ??
                        "https://i.ibb.co/S32HNjD/no-image.jpg",
                  ),
                ),
                title: Text(AuthService.currentUser!.profile.name ?? "-"),
                subtitle: Text("${AuthService.currentUser!.profile.email}"),
                trailing: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.edit,
                    size: 12.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
