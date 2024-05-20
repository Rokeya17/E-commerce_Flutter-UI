import 'package:ecom_ui/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ecom extends StatelessWidget {
  const Ecom({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomeScreen(),
    );
  }
}
