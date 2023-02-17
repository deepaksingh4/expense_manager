import 'package:expense_manager/Features/Listing/Presentation/Cubit/ListingCubit.dart';
import 'package:expense_manager/Features/Listing/Presentation/Cubit/ListingStates.dart';
import 'package:expense_manager/Features/Listing/Presentation/GameList.dart';
import 'package:expense_manager/Features/Listing/Presentation/SearchBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListGames extends StatelessWidget {
  const ListGames({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListingCubit()
        ..setupCubit()
        ..loadGames(),
      child: BlocBuilder<ListingCubit, ListingStates>(
        builder: (context, state) {
          if (state is GamesLoaded) {
            return Scaffold(
              body: SafeArea(
                child: Stack(
                  children: [
                    GameList(games: state.games),
                    const Searchbar(),
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
          } else {
            //hide loader & update UI
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: Colors.orange,
            );
          }
        },
      ),
    );
  }
}
