import 'package:get/get.dart';

class Lightcontroller extends GetxController {
  final bool = false.obs;

  void bulbswitch() {
    bool.value = !bool.value;
  }
}
