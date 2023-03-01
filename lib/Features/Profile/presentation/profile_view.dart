import 'package:Game_Finder/Core/app_colors.dart';
import 'package:Game_Finder/Features/Profile/data/profile_menu_model.dart';
import 'package:Game_Finder/Features/Profile/presentation/profile_menu_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileView();
}

class _ProfileView extends State<ProfileView> {

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.favoriteBTNBGColor,
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(18)),
    ),
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColors.profileBGColor,
      child: _profile()
    );
  }

  Widget _profile() {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 74),
                SizedBox(
                  height: 180,
                  width: 180,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    child: Image.asset('images/profile.jpeg'),
                  ),
                ),
                const SizedBox(height: 25,),
                const Text(
                    'Deep',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600
                    ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () { },
                  child: const Text('Favorite'),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: const BoxDecoration(borderRadius: BorderRadius.only(
                topLeft: Radius.circular(55),
                topRight: Radius.circular(55)
            ),
                color: Colors.white
            ),
            child: ProfileMenuList(menu: [
              ProfileMenuModel(id: 1,
                  name: 'Change Password',
                  imagePath: 'images/01.jpg',
                  iConBGColor: AppColors.changePasswordBTNBGColor,
                  icon: const Icon(
                    Icons.password,
                    color: AppColors.changePasswordIconBGColor,
                  )
              ),
              ProfileMenuModel(id: 2,
                  name: 'Forgot Password',
                  imagePath: 'images/01.jpg',
                  iConBGColor: AppColors.forgotPasswordBTNBGColor,
                  icon: const Icon(
                    Icons.password,
                    color: AppColors.logoutIconBGColor,
                  )
              ),
              ProfileMenuModel(id: 3,
                  name: 'About The App',
                  imagePath: 'images/01.jpg',
                  iConBGColor: AppColors.aboutBTNBGColor,
                  icon: const Icon(
                      Icons.description_outlined,
                      color: AppColors.aboutIconBGColor
                  )
              ),
              ProfileMenuModel(id: 4,
                  name: 'Logout',
                  imagePath: 'images/01.jpg',
                  iConBGColor: AppColors.logoutBTNBGColor,
                  icon: const Icon(
                    Icons.logout,
                    color: AppColors.logoutIconBGColor,
                  )
              ),
            ],),
          ),
        ),
      ],
    );
  }
}
