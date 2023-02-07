import 'package:flutter/material.dart';

class Inspiration extends StatelessWidget {
  const Inspiration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 180,

      margin: const EdgeInsets.only(left: 10, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.limeAccent,
      ),
    );
  }
}
