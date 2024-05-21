import 'package:ecom_ui/Screens/widgets/product_card.dart';
import 'package:flutter/material.dart';

import '../utility/circular_iconbutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CircularIconButton(
            icon: Icons.add,
            onTap: () {},
          ),
          const SizedBox(width: 8),
          CircularIconButton(
            icon: Icons.search,
            onTap: () {},
          ),
          const SizedBox(width: 8),
          CircularIconButton(
            icon: Icons.rocket,
            onTap: () {},
          ),
        ],
      ),
      body: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.video_collection_outlined),
                ),
                Tab(
                  icon: Icon(Icons.delivery_dining),
                ),
                Tab(
                  icon: Icon(Icons.notifications),
                ),
                Tab(
                  icon: CircleAvatar(),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  return const ProductCard();
                },
                itemCount: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
