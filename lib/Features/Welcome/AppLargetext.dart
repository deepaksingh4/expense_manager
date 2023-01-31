import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../Core/AppColors.dart';

class AppLargeText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  const AppLargeText({
    Key? key,
    required this.text,
    this.fontSize = 30,
    this.color = AppColors.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color
      ),
    );
  }
}