import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utility/appcolors.dart';
import '../../utility/imageasset.dart';
import '../addtocart_screen.dart';
import '../productdetails_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _viewProductDetails(context);
      },
      child: Card(
        shadowColor: AppColors.primaryColor.withOpacity(0.1),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: SizedBox(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProductImage(),
              const SizedBox(height: 4),
              _buildProductName(),
              _buildPriceAndRating(),
              _buildAddToCartButton(),
            ],
          ),
        ),
      ),
    );
  }

  void _viewProductDetails(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProductDetailsScreen()),
    );
  }

  Widget _buildProductImage() {
    return Container(
      height: 125,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        image: DecorationImage(
          image: AssetImage(
            ImageAssets.dressSVG,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProductName() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Women's Casual Dress",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _buildPriceAndRating() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'USD \$950.00',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
          Row(
            children: List.generate(5, (index) {
              return const Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              );
            }),
          ),
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 16,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildAddToCartButton() {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            _addToCart();
          },
          style: TextButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
          ),
          child: const Text('Add to Cart'),
        ),
      ),
    );
  }

  void _addToCart() {
    Get.to(const AddToCartScreen(prices: [950.0]));
  }
}
