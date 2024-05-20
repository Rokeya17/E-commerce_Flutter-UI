import 'package:ecom_ui/Screens/widgets/customstepper.dart';
import 'package:flutter/material.dart';

import '../utility/imageasset.dart';

class CartProductScreen extends StatelessWidget {
  const CartProductScreen({Key? key, required double price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 02,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(ImageAssets.dressSVG),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Women's casual dress",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          RichText(
                            text: const TextSpan(
                                style: TextStyle(color: Colors.grey),
                                children: [
                                  TextSpan(text: 'color:blue'),
                                  TextSpan(text: 'Size:XL')
                                ]),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete),
                      color: Colors.red,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "\$100",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 85,
                      child: FittedBox(
                        child: CustomStepper(
                            lowerLimit: 1,
                            upperLimit: 10,
                            stepValue: 1,
                            value: 1,
                            onChange: (int value) {}),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
