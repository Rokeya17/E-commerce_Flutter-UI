import 'package:flutter/material.dart';

import 'widgets/product_card.dart';

class RelatedProductWidget extends StatelessWidget {
  const RelatedProductWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Related Products',
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const SizedBox(height: 16),
          GridView.builder(
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
            itemBuilder: (context, index) {
              return const ProductCard();
            },
            itemCount: 8,
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
