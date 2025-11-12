import 'dart:convert';

import 'package:getxsample/models/products.dart';
import 'package:getxsample/models/respusers.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class Apiservice {
  final String baseurl = "https://fakestoreapi.com";
  Logger logger = Logger();

  Future<List<Products>?> getproducts() async {
    Uri url = Uri.parse("$baseurl/products/");

    try {
      final response = await http.get(url);

      logger.i(response.body);

      if (response.statusCode == 200) {
        var jsonlist = jsonDecode(response.body) as List;
        return jsonlist
            .map((toElement) => Products.fromJson(toElement))
            .toList();
      }
    } catch (e) {
      logger.e(e);
    }
    return null;
  }

  Future<List<Users>?> getusers() async {
    Uri url = Uri.parse("https://dummyjson.com/users");
    try {
      final response = await http.get(url);
      logger.i(response.body);
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        var resp = Respusers.fromJson(json);
        return resp.users;
      }
    } catch (e) {
      logger.e(e);
    }
    return null;
  }
}
