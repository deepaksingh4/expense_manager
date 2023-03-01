import 'package:Game_Finder/Features/Profile/data/profile_menu_model.dart';
import 'package:Game_Finder/Features/Profile/presentation/profile_menu_cell.dart';
import 'package:Game_Finder/Features/Profile/presentation/profile_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Listing/Domain/GameUIModel.dart';

class ProfileMenuList extends StatefulWidget {
  const ProfileMenuList({Key? key, required this.menu}) : super(key: key);
  final List<ProfileMenuModel> menu;

  @override
  State<ProfileMenuList> createState() => _ProfileMenuListState();
}

class _ProfileMenuListState extends State<ProfileMenuList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    //TODO: get the values from state : Cubit
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 16, right: 16),
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 10),
          itemCount: widget.menu.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  switch (index) {
                    case 0:
                      ProfileWidgets.changePassword(context);
                      break;
                    case 1:
                      ProfileWidgets.forgotPassword(context);
                      break;
                    case 2:
                      ProfileWidgets.aboutTheApp(context);
                      break;
                    case 3:
                      print('Logout the app');
                  }
            },
            child: ProfileMenu(
              model: widget.menu[index],
            ));
          }),
    );
  }
}
