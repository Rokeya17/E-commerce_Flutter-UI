import 'package:ecom_ui/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ecom extends StatelessWidget {
  const Ecom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomeScreen(),
    );
  }
}
