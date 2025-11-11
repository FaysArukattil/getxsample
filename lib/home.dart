import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getxsample/countcontroller.dart';
import 'package:getxsample/lightcontroller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Countcontroller c = Get.put(Countcontroller());
    final Lightcontroller l = Get.put(Lightcontroller());
    return Scaffold(
      appBar: AppBar(title: Text("GetX")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  snackPosition: SnackPosition.BOTTOM,
                  "Delete",
                  "Message Deleted",
                  backgroundColor: Colors.red,
                  mainButton: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text("Undo"),
                  ),
                );
              },
              style: ButtonStyle(),
              child: Text("SnackBar"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  barrierDismissible: false,
                  content: Text("Are You Sure Want to exit..?"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("yes"),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("No"),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("Canel"),
                    ),
                  ],
                );
              },
              style: ButtonStyle(),
              child: Text("Sample"),
            ),

            // ElevatedButton(
            //   onPressed: () {
            //     Get.changeTheme(ThemeData.dark());
            //   },
            //   child: Text("Change ThemeS"),
            // ),
            Obx(() => Text("${c.count}")),

            GetBuilder(
              builder: (Countcontroller controller) {
                return Text("${controller.count}");
              },
            ),
            ElevatedButton(
              onPressed: () => c.increment(),
              child: Icon(Icons.add),
            ),
            SizedBox(height: 30),
            Obx(
              () => Icon(
                l.bool.value ? Icons.lightbulb : Icons.lightbulb,
                color: l.bool.value ? Colors.yellow : Colors.grey,
                size: 100,
              ),
            ),
            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () => l.bulbswitch(),
              child: Text("Switch"),
            ),
          ],
        ),
      ),
    );
  }
}
