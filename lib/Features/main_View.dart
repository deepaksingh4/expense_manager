import 'package:expense_manager/Core/app_colors.dart';
import 'package:expense_manager/Features/Dashboard/Presentation/Views/dashboard.dart';
import 'package:expense_manager/Features/Profile/profile_view.dart';
import 'package:expense_manager/Features/Search/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Dashboard/Presentation/blocs/dashboard_cubit.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List pages = [Dashboard(), SearchView(), ProfileView()];
  int currentPage = 0;

  void onTap(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => DashboardCubit()..loadContent(),
        child: Scaffold(
          body: pages[currentPage],
          bottomNavigationBar: BottomNavigationBar(
            onTap: onTap,
            selectedItemColor: AppColors.titleColor,
            unselectedItemColor: AppColors.subTextColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: currentPage,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                  label: 'Dashboard', icon: Icon(Icons.apps)),
              BottomNavigationBarItem(
                  label: 'Search', icon: Icon(Icons.search)),
              BottomNavigationBarItem(
                  label: 'Profile', icon: Icon(Icons.person)),
            ],
          ),
        ));
  }
}


