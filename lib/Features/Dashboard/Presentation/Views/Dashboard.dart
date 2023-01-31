import 'package:expense_manager/Core/AppColors.dart';
import 'package:expense_manager/Features/Dashboard/Presentation/ViewModels/DashboardViewModel.dart';
import 'package:expense_manager/Features/Dashboard/Presentation/Views/Emotions/Emotions.dart';
import 'package:expense_manager/Features/Dashboard/Presentation/Views/Inspiration/Inspiration.dart';
import 'package:expense_manager/Features/Welcome/AppLargetext.dart';
import 'package:expense_manager/Features/Welcome/AppText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Places/Places.dart';

enum Sections { places, inspiration, emotion }

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  final DashboardViewModel viewModel = DashboardViewModel();

  ListView getItems(BuildContext cxt, Sections section) {
    return ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          switch (section) {
            case Sections.emotion:
              return Emotions();
            case Sections.inspiration:
              return Inspiration();
            case Sections.places:
              return Places();
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu_sharp),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.accentColor),
                  )
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, top: 40),
                child: const AppLargeText(text: 'Discover')),
            const SizedBox(height: 40),
            TabBar(
              controller: tabController,
              isScrollable: true,
              unselectedLabelColor: AppColors.subTextColor,
              labelColor: AppColors.titleColor,
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: const EdgeInsets.only(left: 20, right: 20),
              tabs: const [
                Text('Places'),
                Text('Inspiration'),
                Text('Emotions')
              ],
            ),
            Container(
              height: 250,
              width: double.maxFinite,
              child: TabBarView(
                controller: tabController,
                children: [
                  getItems(context, Sections.places),
                  getItems(context, Sections.inspiration),
                  getItems(context, Sections.emotion)
                ],
              ),
            ),
            const SizedBox(height: 40),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppLargeText(
                    text: "Explore More",
                    fontSize: 20,
                  ),
                  AppText(
                    text: 'See all',
                    fontSize: 12,
                    color: AppColors.buttonBackground,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: double.maxFinite,
              margin: EdgeInsets.only(left:20),
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 80,
                      height: 100,
                      margin: EdgeInsets.only(right: 8),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          const SizedBox(height: 7,),
                          const AppText(text: 'Kayaking', fontSize: 12,)
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
