import 'package:get/get.dart';
import 'package:getxsample/models/respusers.dart';
import 'package:getxsample/services/apiservice.dart';

class Usercontroller extends GetxController {
  var userlist = <Users>[].obs;
  Apiservice apiservice = Apiservice();
  bool isloading = true;

  void toggle() {
    isloading = !isloading;
    update();
  }

  Future<void> getuserlist() async {
    List<Users>? response = await apiservice.getusers();
    if (response != null) {
      userlist.assignAll(response);
    }
    toggle();
  }
}
