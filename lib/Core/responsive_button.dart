import 'package:Game_Finder/Core/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  String? title;
  ResponsiveButton({Key? key, this.isResponsive = false, this.width = 80, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.buttonBackground,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          title != null ? Text(title!,
         style: const TextStyle(
         color: Colors.white
         )) : Container(),
          const SizedBox(
            width: 5,
          ),
          const Icon(Icons.navigate_next,
            color: Colors.white60,
          )
        ],
      ),
    );
  }
}
