import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxsample/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(Home());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Splash",
          style: TextStyle(color: Colors.white, fontSize: 60),
        ),
      ),
      backgroundColor: Colors.deepPurple,
    );
  }
}
