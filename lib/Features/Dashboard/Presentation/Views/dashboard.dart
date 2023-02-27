import 'package:Game_Finder/Core/app_colors.dart';
import 'package:Game_Finder/Features/Dashboard/Presentation/blocs/dashboard_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Game_Finder/Features/Dashboard/Presentation/blocs/dashboard_cubit.dart';
import 'package:Game_Finder/Features/Dashboard/Presentation/Views/Emotions/emotions.dart';
import 'package:Game_Finder/Features/Dashboard/Presentation/Views/Inspiration/inspiration.dart';
import 'package:Game_Finder/Features/Welcome/app_large_text.dart';
import 'package:Game_Finder/Features/Welcome/app_text.dart';
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
  void initState() {
    super.initState();
    context.read<DashboardCubit>().loadContent();
  }

  @override
  Widget build(BuildContext context) {
    DrawerController controller = const DrawerController(
      alignment: DrawerAlignment.start,
      child: Text('Sample1'),
    );

    TabController tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, elevation: 0),
              onPressed: () {},
              child: const CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  SizedBox(
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
                    margin: const EdgeInsets.only(left: 20, right: 20),
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
                            margin: const EdgeInsets.only(right: 8),
                            child: Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(10)),
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
                  return SizedBox(
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
    );
  }

  ListView _getItems(BuildContext cxt, Sections section, {int count = 3}) {
    return ListView.builder(
        itemCount: count,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          switch (section) {
            case Sections.emotion:
              return const Emotions();
            case Sections.inspiration:
              return const Inspiration();
            case Sections.places:
              return const Places();
          }
        });
  }
}
