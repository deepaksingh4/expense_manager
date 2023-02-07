import 'package:expense_manager/Core/app_colors.dart';
import 'package:expense_manager/Features/Dashboard/Presentation/blocs/dashboard_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expense_manager/Features/Dashboard/Presentation/blocs/dashboard_cubit.dart';
import 'package:expense_manager/Features/Dashboard/Presentation/Views/Emotions/emotions.dart';
import 'package:expense_manager/Features/Dashboard/Presentation/Views/Inspiration/inspiration.dart';
import 'package:expense_manager/Features/Welcome/app_large_text.dart';
import 'package:expense_manager/Features/Welcome/app_text.dart';
import 'package:flutter/material.dart';
import 'Places/places.dart';
import 'package:intl/intl.dart';

enum Sections { places, inspiration, emotion }

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return BlocProvider(
      create: (context) => DashboardCubit()..loadContent(),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          _getItems(context, Sections.places),
                          _getItems(context, Sections.inspiration),
                          _getItems(context, Sections.emotion)
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
                      margin: const EdgeInsets.only(left: 20),
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const AppText(
                                    text: 'Kayaking',
                                    fontSize: 12,
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
                BlocBuilder<DashboardCubit, DashboardState>(
                    builder: (context, state) {
                  if (state is LoadedContentState && state.images.isNotEmpty) {
                    return Container(
                      height: 200,
                        width: double.maxFinite,
                        child: _getItems(context, Sections.emotion,
                            count: state.images.length));
                  } else {
                    return Container();
                  }
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView _getItems(BuildContext cxt, Sections section, {int count = 3}) {
    return ListView.builder(
        itemCount: count,
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
}
