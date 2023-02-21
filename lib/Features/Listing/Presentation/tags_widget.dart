import 'package:expense_manager/Features/Listing/Data/GameList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TagsWidget extends StatelessWidget {
  TagsWidget({Key? key, required this.tags}) : super(key: key);
  List<Genre> tags;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 20,
        margin: const EdgeInsets.only(left: 8, right: 8),
        child: ListView.builder(
          itemBuilder: getItemFor,
          itemCount: tags.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Tag getItemFor(context, index) {
    return Tag(
      tag: tags[index].name ?? '',
    );
  }
}

class Tag extends StatelessWidget {
  Tag({Key? key, required this.tag}) : super(key: key);
  String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white30),
      alignment: Alignment.center,
      child: Text(
        tag,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 10,
        ),
      ),
    );
  }
}
