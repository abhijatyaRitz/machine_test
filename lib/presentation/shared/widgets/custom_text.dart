import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.text,
      {super.key,
      this.fontFamily,
      this.color,
      this.textAlign,
      required this.size,
      required this.fontWeight});

  final String text;
  final double size;
  final Color? color;
  final FontWeight fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );
  }
}
