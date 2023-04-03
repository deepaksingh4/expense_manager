import 'package:Game_Finder/Core/router.dart';
import 'package:Game_Finder/Features/Login/Presentation/login_cubit.dart';
import 'package:Game_Finder/Features/Login/Presentation/login_states.dart';
import 'package:Game_Finder/Features/Profile/data/profile_menu_model.dart';
import 'package:Game_Finder/Features/Profile/presentation/bloc/profile_menu_cubit.dart';
import 'package:Game_Finder/Features/Profile/presentation/bloc/profile_menu_state.dart';
import 'package:Game_Finder/Features/Profile/presentation/profile_menu_cell.dart';
import 'package:Game_Finder/Features/Profile/presentation/profile_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileMenuList extends StatefulWidget {
  const ProfileMenuList({Key? key, required this.menu}) : super(key: key);
  final List<ProfileMenuModel> menu;

  @override
  State<ProfileMenuList> createState() => _ProfileMenuListState();
}

class _ProfileMenuListState extends State<ProfileMenuList> {
  late LoginCubit authenticationBloc;

  @override
  void initState() {
    //TODO: get the values from state : Cubit
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    authenticationBloc = BlocProvider.of<LoginCubit>(context);
    return BlocConsumer<ProfileMenuCubit, ProfileMenuState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is ChangePassword) {
          ProfileWidgets.changePassword(context);
        }

        if (state is ForgotPassword) {
          ProfileWidgets.forgotPassword(context);
        }

        if (state is AboutTheApp) {
          ProfileWidgets.aboutTheApp(context);
        }

        if (state is LogoutUser) {
          authenticationBloc.emit(NotLoggedIn());
          Navigator.of(context).pushReplacementNamed(
              Navigation.login);
        }
      },
      builder: (context, state) {
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
                          context.read<ProfileMenuCubit>().changePassword();
                          break;
                        case 1:
                          context.read<ProfileMenuCubit>().forgotPassword();
                          break;
                        case 2:
                          context.read<ProfileMenuCubit>().aboutApp();
                          break;
                        case 3:
                          context.read<ProfileMenuCubit>().logoutUser();
                          break;
                      }
                    },
                    child: ProfileMenu(
                      model: widget.menu[index],
                    ));
              }),
        );
      },
    );
  }
}
