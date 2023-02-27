import 'package:Game_Finder/Core/app_colors.dart';
import 'package:Game_Finder/Features/Listing/Presentation/Cubit/search_cubit.dart';
import 'package:Game_Finder/Features/Listing/Presentation/Cubit/search_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../Core/debouncer.dart';

class Searchbar extends StatefulWidget {
  Searchbar({Key? key}) : super(key: key);

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  final TextEditingController searchController = TextEditingController();
  final _debouncer = Debouncer(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchStates>(builder: (context, state) {
      return Container(
        margin: const EdgeInsets.only(left: 16, right: 16, top: 20),
        height: 50.0,
        width: double.maxFinite,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.buttonBackground),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              padding: const EdgeInsets.only(top: 10.0),
              child: TextField(
                onChanged: handleTextChange,
                controller: searchController,
                textInputAction: TextInputAction.search,
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  hintText: 'Search game by name',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
                onSubmitted: handleTextChange,
              ),
            ),
            GestureDetector(
              onTap: handleSearch,
              child: const Icon(Icons.search),
            )
          ],
        ),
      );
    });
  }

  handleSearch() {
    FocusManager.instance.primaryFocus?.unfocus();
    EasyLoading.show(status: 'Searching...');
    context.read<SearchCubit>().searchGame(searchController.text);
  }

  handleTextChange(String str) {
    if (str.isNotEmpty) {
      _debouncer.run(() => handleSearch());
    }
  }
}
