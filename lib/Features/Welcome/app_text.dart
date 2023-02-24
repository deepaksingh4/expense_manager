import 'package:Game_Finder/Core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  const AppText({
    Key? key,
    required this.text,
    this.fontSize = 30,
    this.color = AppColors.textColor,
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