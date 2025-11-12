import 'package:get/get.dart';
import 'package:getxsample/models/products.dart';
import 'package:getxsample/services/apiservice.dart';

class Productcontroller extends GetxController {
  //List<Products>?
  var plist = <Products>[].obs;
  Apiservice apiservice = Apiservice();
  bool isloading = true;
  void toggle() {
    isloading = !isloading;
    update();
  }

  Future<void> getplist() async {
    List<Products>? response = await apiservice.getproducts();
    plist.assignAll(response!);
    toggle();
  }
}
