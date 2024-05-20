import 'package:ecom_ui/Screens/widgets/product_card.dart';
import 'package:ecom_ui/utility/circular_iconbutton.dart';
import 'package:flutter/material.dart';

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
          const SizedBox(
            width: 08,
          ),
          CircularIconButton(
            icon: Icons.search,
            onTap: () {},
          ),
          const SizedBox(
            width: 08,
          ),
          CircularIconButton(
            icon: Icons.rocket,
            onTap: () {},
          ),
          const SizedBox(
            width: 08,
          ),
          CircularIconButton(
            icon: Icons.add,
            onTap: () {},
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return const FittedBox(
            child: ProductCard(),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
