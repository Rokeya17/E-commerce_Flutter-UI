import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utility/appcolors.dart';
import '../../utility/imageasset.dart';
import '../productdetails_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String assetName = ImageAssets.dressSVG;
    final Widget svg = SvgPicture.asset(
      assetName,
    );

    return InkWell(
      onTap: () {
        Get.to(const ProductDetailsScreen());
      },
      child: Card(
        shadowColor: AppColors.primaryColor.withOpacity(0.1),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: SizedBox(
          width: 120,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      child: svg),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                "Women’s Dress ",
                maxLines: 1,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'USD950.00',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor),
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: List.generate(5, (index) {
                      return const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      );
                    }),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                ),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
