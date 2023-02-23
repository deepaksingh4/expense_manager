import 'package:expense_manager/Features/Listing/Presentation/Cubit/search_cubit.dart';
import 'package:expense_manager/Features/Listing/Presentation/Cubit/search_states.dart';
import 'package:expense_manager/Features/Listing/Presentation/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Domain/GameUIModel.dart';

class GameList extends StatefulWidget {
  const GameList({Key? key, required this.games}) : super(key: key);
  final List<GameUIModel> games;

  @override
  State<GameList> createState() => _GameListState();
}

class _GameListState extends State<GameList> {
 final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    //TODO: get the values from state : Cubit
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      child: ListView.builder(
        controller: _scrollController
          ..addListener(() {
            if (_scrollController.offset ==
                _scrollController.position.maxScrollExtent){
              print("time to scroll");
            }
          }),
        padding: const EdgeInsets.only(top: 10),
          itemCount: widget.games.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return  Game(model: widget.games[index],);
          }),
    );
  }


}
