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
  final CarouselController _carouselController = CarouselController();

  static const List<String> demoImages = [
    "https://images.pexels.com/photos/230544/pexels-photo-230544.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/38519/macbook-laptop-ipad-apple-38519.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/5632382/pexels-photo-5632382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];

  void _nextPage() {
    _carouselController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  void _previousPage() {
    _carouselController.previousPage(
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CarouselSlider(
                  items: demoImages.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return SizedBox(
                          width: double.infinity,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(i, fit: BoxFit.cover)),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 250.0,
                    viewportFraction: 1,
                    onPageChanged: (int page, _) {
                      _selectedSlider.value = page;
                    },
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    enableInfiniteScroll: false,
                  ),
                  carouselController: _carouselController,
                ),
              ),
              Positioned(
                left: 0,
                bottom: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.teal,
                        ),
                        onPressed: _previousPage,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 120,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.teal,
                        ),
                        onPressed: _nextPage,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          ValueListenableBuilder(
            valueListenable: _selectedSlider,
            builder: (context, value, _) {
              List<Widget> list = [];
              for (int i = 0; i < demoImages.length; i++) {
                list.add(
                  Container(
                    height: value == i ? 13 : 10,
                    width: value == i ? 13 : 10,
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            value == i ? AppColors.primaryColor : Colors.grey),
                  ),
                );
              }

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list,
              );
            },
          ),
        ],
      ),
    );
  }
}
