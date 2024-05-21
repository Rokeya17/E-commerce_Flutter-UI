import 'package:flutter/material.dart';

class BottomnavScreen extends StatefulWidget {
  const BottomnavScreen({Key? key}) : super(key: key);

  @override
  State<BottomnavScreen> createState() => _BottomnavScreenState();
}

class _BottomnavScreenState extends State<BottomnavScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Tab Demo'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.video_camera_back_outlined)),
            Tab(icon: Icon(Icons.delivery_dining)),
            Tab(icon: Icon(Icons.notifications)),
            Tab(icon: Icon(Icons.shopping_cart_outlined)),
            Tab(icon: Icon(Icons.shopping_basket_outlined)),
            Tab(icon: CircleAvatar()),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('Home')),
          Center(child: Text('Video')),
          Center(child: Text('Delivery')),
          Center(child: Text('Notifications')),
          Center(child: Text('Cart')),
          Center(child: Text('Basket')),
          Center(child: Text('Profile')),
        ],
      ),
    );
  }
}
