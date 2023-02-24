import 'package:expense_manager/Features/Listing/Domain/GameUIModel.dart';
import 'package:expense_manager/Features/Listing/Presentation/Cubit/ListingCubit.dart';
import 'package:expense_manager/Features/Listing/Presentation/Cubit/ListingStates.dart';
import 'package:expense_manager/Features/Listing/Presentation/Cubit/search_states.dart';
import 'package:expense_manager/Features/Listing/Presentation/GameList.dart';
import 'package:expense_manager/Features/Listing/Presentation/SearchBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Cubit/search_cubit.dart';

class ListGames extends StatefulWidget {
  const ListGames({super.key});

  @override
  State<ListGames> createState() => _ListGamesState();
}

class _ListGamesState extends State<ListGames> {
  @override
  void initState() {
    // TODO: implement initState
    EasyLoading.show(status: 'loading...', dismissOnTap: false);
    context.read<ListingCubit>().loadGames();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<GameUIModel> games = [];
    return BlocProvider(
        create: (context) => SearchCubit(),
        child: BlocBuilder<SearchCubit, SearchStates>(
          builder: (context, searchState) {
            if (searchState is SearchingDone) {
              games = searchState.searchResult;
            }

            return BlocBuilder<ListingCubit, ListingStates>(
              builder: (context, state) {

                if (state is GamesLoaded) {
                  EasyLoading.dismiss(animation: true);
                  if (games.isEmpty) {
                    games = state.games;
                  }
                  return Scaffold(
                    body: SafeArea(
                      child: Stack(
                        children: [
                          GameList(games: games),
                          Searchbar(),
                        ],
                      ),
                    ),
                  );
                } else if (state is LoadingGames) {
                  //show loader
                  return Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    color: Colors.blue,
                  );
                } else if (state is LoadingGamesFailed) {
                  //hide loader & update UI
                  return Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    color: Colors.redAccent,
                  );
                } else {
                  return Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    color: Colors.white,
                  );
                }
              },
            );
          },
        ));
  }
}
