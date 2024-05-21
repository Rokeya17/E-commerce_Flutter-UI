import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utility/appcolors.dart';

class ProductImageSlider extends StatefulWidget {
  const ProductImageSlider({Key? key}) : super(key: key);

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  final ValueNotifier<int> _selectedSlider = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    height: 300.0,
                    viewportFraction: 1,
                    onPageChanged: (int page, _) {
                      _selectedSlider.value = page;
                    }),
                items: [1, 2, 3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(color: Colors.grey),
                      );
                    },
                  );
                }).toList(),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: ValueListenableBuilder(
                    valueListenable: _selectedSlider,
                    builder: (context, value, _) {
                      List<Widget> list = [];
                      for (int i = 0; i < 3; i++) {
                        list.add(
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: value == i
                                    ? AppColors.primaryColor
                                    : Colors.white),
                          ),
                        );
                      }

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: list,
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
