import 'package:expense_manager/Features/Listing/Data/GameList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TagsWidget extends StatelessWidget {
  const TagsWidget({Key? key, required this.tags}) : super(key: key);
  final List<String> tags;

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
      tag: tags[index] ?? '',
    );
  }
}

class Tag extends StatelessWidget {
  const Tag({Key? key, required this.tag}) : super(key: key);
  final String tag;

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
