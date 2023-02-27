import 'package:Game_Finder/Features/Listing/Presentation/game.dart';
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
                  _scrollController.position.maxScrollExtent) {
//reload with new page number
              //who holds the list of games with page count and next details
              }
            }),
          padding: const EdgeInsets.only(top: 10),
          itemCount: widget.games.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Game(
              model: widget.games[index],
            );
          }),
    );
  }
}
