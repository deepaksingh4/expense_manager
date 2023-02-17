import 'package:expense_manager/Features/Listing/Presentation/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Domain/GameUIModel.dart';

class GameList extends StatefulWidget {
  const GameList({Key? key, required this.games}) : super(key: key);
  final List<GameUIModel> games;

  @override
  State<GameList> createState() => _GameListState();
}

class _GameListState extends State<GameList> {

  @override
  void initState() {
    //TODO: get the values from state : Cubit
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: ListView.builder(
        padding: EdgeInsets.only(top: 10),
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return const Game();
          }),
    );
  }
}
