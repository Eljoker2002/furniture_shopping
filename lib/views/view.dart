import 'package:flutter/material.dart';
import 'package:makehome/widgets/app_icons.dart';
import 'package:makehome/widgets/app_product.dart';
import 'package:makehome/widgets/app_text.dart';

class FirstView extends StatefulWidget {
  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.search,
              color: Color(0xFF808080),
            ),
            Spacer(),
            Column(
              children: [
                AppText(
                  title: "Make home",
                  fontSize: 18,
                  color: Color(0xFF909090),
                ),
                SizedBox(
                  height: 5,
                ),
                AppText(
                  title: "BEAUTIFUL",
                  fontSize: 18,
                  color: Color(0xFF242424),
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xFF808080),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 68,
              child: ListView(
                scrollDirection: axisDirectionToAxis(
                  AxisDirection.right,
                ),
                children: [
                  Column(
                    children: [
                      CustomIcon(
                        image: 'lib/assets/images/star 1.png',
                        color:
                            isSelected ? Color(0xFF303030) : Color(0xFFF5F5F5),
                        onTap: () {
                          setState(() {
                            isSelected = true;
                          });
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        title: "Popular",
                        color:
                            isSelected ? Color(0xFF242424) : Color(0xFF999999),
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      CustomIcon(
                        image: 'lib/assets/images/chair 4.png',
                        color:
                            isSelected ? Color(0xFFF5F5F5) : Color(0xFF303030),
                        onTap: () {
                          setState(() {
                            isSelected = false;
                          });
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        title: "Chair",
                        color:
                            isSelected ? Color(0xFF999999) : Color(0xFF242424),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      CustomIcon(
                        onTap: () {
                          setState(() {
                            isSelected = false;
                          });
                        },
                        color:
                            isSelected ? Color(0xFFF5F5F5) : Color(0xFF303030),
                        image: 'lib/assets/images/table 1 1.png',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        title: "Table",
                        color:
                            isSelected ? Color(0xFF999999) : Color(0xFF242424),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      CustomIcon(
                        onTap: () {
                          setState(() {
                            isSelected = false;
                          });
                        },
                        color:
                            isSelected ? Color(0xFFF5F5F5) : Color(0xFF303030),
                        image: 'lib/assets/images/sofa 1.png',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        title: "Armchair",
                        color:
                            isSelected ? Color(0xFF999999) : Color(0xFF242424),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      CustomIcon(
                        onTap: () {
                          setState(() {
                            isSelected = false;
                          });
                        },
                        color:
                            isSelected ? Color(0xFFF5F5F5) : Color(0xFF303030),
                        image: 'lib/assets/images/bed 1.png',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        title: "Bed",
                        color:
                            isSelected ? Color(0xFF999999) : Color(0xFF242424),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      CustomIcon(
                        onTap: () {
                          setState(() {
                            isSelected = false;
                          });
                        },
                        color:
                            isSelected ? Color(0xFFF5F5F5) : Color(0xFF303030),
                        image: 'lib/assets/images/chair 4.png',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        title: "Chair",
                        color:
                            isSelected ? Color(0xFF999999) : Color(0xFF242424),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                CustomProduct(
                  productTitle: 'Black Simple Lamp',
                  productPrice: '\$ 12.00',
                ),
                CustomProduct(
                  productTitle: 'Black Simple Lamp',
                  productPrice: '\$ 12.00',
                ),
                CustomProduct(
                  productTitle: 'Black Simple Lamp',
                  productPrice: '\$ 12.00',
                ),
                CustomProduct(
                  productTitle: 'Black Simple Lamp',
                  productPrice: '\$ 12.00',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
