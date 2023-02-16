import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Domain/GameUIModel.dart';

class GameList extends StatefulWidget {
  const GameList({Key? key}) : super(key: key);

  @override
  State<GameList> createState() => _GameListState();
}

class _GameListState extends State<GameList> {
   List<GameUIModel> games = [const GameUIModel(name: "name", imageURL: "imageURL"),const GameUIModel(name: "name", imageURL: "imageURL"), const GameUIModel(name: "name", imageURL: "imageURL")];

  @override
  void initState() {
    //TODO: get the values from state : Cubit
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 80),
        itemCount: games.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            width: double.maxFinite,
            height: 50,
            decoration: const BoxDecoration(color: Colors.redAccent),
          );
        });
  }
}
