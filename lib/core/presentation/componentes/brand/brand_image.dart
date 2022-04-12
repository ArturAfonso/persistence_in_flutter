import 'package:flutter/material.dart';

class BrandImageWidget extends StatelessWidget {
  final double widith;
  final double height;

  const BrandImageWidget({this.height: 50, this.widith: 90});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/brand/toy-576520_1280.png',
      width: widith,
      height: height,
      fit: BoxFit.fitWidth,
    );
  }
}
