import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxsample/controllers/usercontroller.dart';

class Viewuserscreen extends StatelessWidget {
  const Viewuserscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final usercontroller = Get.put(Usercontroller());
    usercontroller.getuserlist();

    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: GetBuilder<Usercontroller>(
        builder: (controller) {
          if (controller.isloading) {
            return const Center(child: CircularProgressIndicator());
          } else if (controller.userlist.isEmpty) {
            return const Center(child: Text('No users found'));
          } else {
            return ListView.builder(
              itemCount: controller.userlist.length,
              itemBuilder: (context, index) {
                final user = controller.userlist[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(user.firstName![0].toUpperCase()),
                  ),
                  title: Text('${user.firstName} ${user.lastName}'),
                  subtitle: Text(user.email!),
                );
              },
            );
          }
        },
      ),
    );
  }
}
