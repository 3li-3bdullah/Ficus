import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    required this.text,
    required this.fontsize,
    required  this.fontweight,
  });
  final String text;
  final double fontsize;
  final FontWeight fontweight;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(fontSize: fontsize, fontWeight: fontweight));
  }
}
