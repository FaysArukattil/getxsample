import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxsample/controllers/productcontroller.dart';

class Viewproductscreen extends StatelessWidget {
  const Viewproductscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pcontroller = Get.put(Productcontroller());
    pcontroller.getplist();
    return Scaffold(
      body: GetBuilder(
        builder: (Productcontroller controller) {
          if (controller.isloading) {
            return Center(child: CircularProgressIndicator());
          } else if (controller.plist.isEmpty) {
            return const Center(child: Text('No users found'));
          } else {
            return ListView.builder(
              itemCount: controller.plist.length,
              itemBuilder: (context, index) {
                final product = controller.plist[index];
                return ListTile(
                  title: Text(product.title!),
                  subtitle: Text(product.description!),
                );
              },
            );
          }
        },
      ),
    );
  }
}
