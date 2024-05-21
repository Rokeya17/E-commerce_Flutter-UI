import 'package:flutter/material.dart';

class BottomnavScreen extends StatefulWidget {
  const BottomnavScreen({Key? key}) : super(key: key);

  @override
  State<BottomnavScreen> createState() => _BottomnavScreenState();
}

int _currentIndex = 0;

class _BottomnavScreenState extends State<BottomnavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_back_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
