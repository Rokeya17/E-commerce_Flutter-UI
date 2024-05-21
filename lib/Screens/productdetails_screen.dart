import 'package:ecom_ui/Screens/relatedproducts_widget.dart';
import 'package:ecom_ui/Screens/widgets/productimage_slider.dart';
import 'package:flutter/material.dart';

import '../utility/appcolors.dart';
import 'widgets/customstepper.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<Color> colorsList = [
    Colors.red,
    Colors.deepPurple,
    Colors.black87,
    Colors.pink,
  ];

  List<String> sizes = ['S', 'M', 'L', 'XL'];

  int _selectedColorIndex = 0;
  int _selectedSizeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProductImageSlider(),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Women's casual dress ",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'sddbshfjnjd',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      '4 hours ago',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: List.generate(5, (index) {
                                        return Icon(
                                          Icons.star,
                                          color: index < 4
                                              ? Colors.amber
                                              : Colors.grey,
                                          size: 16,
                                        );
                                      }),
                                    ),
                                    const SizedBox(width: 8),
                                    const Text('348590'),
                                  ],
                                )
                              ],
                            ),
                          ),
                          CustomStepper(
                            lowerLimit: 1,
                            upperLimit: 10,
                            stepValue: 1,
                            value: 1,
                            onChange: (newValue) {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Colors",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children:
                                      colorsList.asMap().entries.map((entry) {
                                    final index = entry.key;
                                    final color = entry.value;
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _selectedColorIndex = index;
                                        });
                                      },
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(right: 8.0),
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: color,
                                          border: Border.all(
                                            color: _selectedColorIndex == index
                                                ? Colors.blue
                                                : Colors.transparent,
                                            width: 2.0,
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Size",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: sizes.asMap().entries.map((entry) {
                                    final index = entry.key;
                                    final size = entry.value;
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _selectedSizeIndex = index;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 20,
                                        height: 20,
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          // color: _selectedSizeIndex == index
                                          //     ? colorsList[_selectedColorIndex]
                                          //     : Colors.grey[300],
                                          border: Border.all(
                                            color: _selectedSizeIndex == index
                                                ? Colors.blue
                                                : Colors.transparent,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Text(size),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product Details",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Being a fashion girl doesn't only mean that you meticulously follow all the celeb trends or that you wear expensive designer labels. You're also very in-tune with your personal sense of style. Simply put, you know what you like and every outfit that you wear demonstrates your own unique perspective.",
                            style: TextStyle(fontSize: 14),
                          ),
                          // TextButton(
                          //   onPressed: () {},
                          //   child: const Text(
                          //     '...more',
                          //     style: TextStyle(color: AppColors.primaryColor),
                          //   ),
                          // ),
                          Divider(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Price:',
                                    style: TextStyle(
                                        color: AppColors.primaryColor),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text('Negotiable'),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Type:',
                                    style: TextStyle(
                                        color: AppColors.primaryColor),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text('Classic shoes'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Material:',
                                    style: TextStyle(
                                        color: AppColors.primaryColor),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text('Plastic Material'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Design:',
                                    style: TextStyle(
                                        color: AppColors.primaryColor),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text('Modern nice'),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Text(
                                    'Customization:',
                                    style: TextStyle(
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Customized logo and design custom packages',
                                      style: TextStyle(
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Brand:',
                                    style: TextStyle(
                                        color: AppColors.primaryColor),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text('Samsung'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Warranty:',
                                    style: TextStyle(
                                        color: AppColors.primaryColor),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text('2 years full warranty'),
                                ],
                              ),
                              Divider(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryColor,
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Add To Cart",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const RelatedProductWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
