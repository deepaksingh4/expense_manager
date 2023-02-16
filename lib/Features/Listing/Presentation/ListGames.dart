import 'package:expense_manager/Features/Listing/Presentation/Cubit/ListingCubit.dart';
import 'package:expense_manager/Features/Listing/Presentation/GameList.dart';
import 'package:expense_manager/Features/Listing/Presentation/SearchBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListGames extends StatelessWidget {
  const ListGames({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: const [
            GameList(),
            Searchbar(),

          ],
        ),
      ),
    );
  }
}
