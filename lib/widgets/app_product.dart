import 'package:flutter/material.dart';

import 'app_text.dart';

class CustomProduct extends StatelessWidget {
  final String productTitle;
  final String productPrice;

  const CustomProduct({
    super.key,
    required this.productTitle,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image(
                image: AssetImage(
                  "lib/assets/images/Mask Group.png",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(
                    'lib/assets/images/Frame 19.png',
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        AppText(
          title: productTitle,
          color: Color(0xFF606060),
        ),
        SizedBox(
          height: 15,
        ),
        AppText(
          title: '\$ 12.00',
          color: Color(0xFF303030),
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}
