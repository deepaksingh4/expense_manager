import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Emotions extends StatelessWidget {
  const Emotions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,

      margin: const EdgeInsets.only(left: 10, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.lightBlueAccent,
      ),
    );
  }
}
