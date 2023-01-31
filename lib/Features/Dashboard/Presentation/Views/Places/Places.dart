import 'package:expense_manager/Features/Welcome/AppLargetext.dart';
import 'package:expense_manager/Features/Welcome/AppText.dart';
import 'package:flutter/material.dart';

class Places extends StatelessWidget {
  const Places({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
      margin: const EdgeInsets.only(left: 10, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.lightGreen,
      ),
      padding: EdgeInsets.only(left: 8,right: 8, bottom: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppLargeText(text: "Title", fontSize: 24,),
          AppText(text: 'Detail about the title', fontSize: 14,)
        ],
      ),
    );
  }
}
