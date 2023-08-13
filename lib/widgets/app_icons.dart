
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String image;
  final Color? color;
  final void Function()? onTap;

  const CustomIcon({
    super.key,
    required this.image,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color ,
        ),
        height: 44,
        width: 44,
        child: Image(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
// 0xFFF5F5F5
// 0xFF303030
