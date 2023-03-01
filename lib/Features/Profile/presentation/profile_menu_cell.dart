
import 'package:Game_Finder/Core/app_colors.dart';
import 'package:Game_Finder/Features/Profile/data/profile_menu_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key? key, required this.model}) : super(key: key);
  final ProfileMenuModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 80,
        child: Row(children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: model.iConBGColor
            ),
            child: model.icon,
          ),
          const SizedBox(width: 15,),
          Text(model.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
          const Spacer(),
          const Icon(Icons.keyboard_arrow_right, color: AppColors.profileBGColor,)
        ],
        ),
    );
  }
}
