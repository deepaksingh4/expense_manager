import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({Key? key}) : super(key: key);
  final double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 16,
      padding: EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: getStars(5)
      ),
    );
  }

  List<Widget> getStars(double rating) {
    List<Widget> ratings = [
      Icon(Icons.star, color: Colors.yellowAccent, size: 15,),
      Icon(Icons.star, color: Colors.yellowAccent, size: 15,),
      Icon(Icons.star, color: Colors.yellowAccent, size: 15,),
      Icon(Icons.star, color: Colors.yellowAccent,size: 15,),
      Icon(Icons.star_half, color: Colors.yellowAccent, size: 15,),
      SizedBox(width: 5,)
    ];
    ratings.add(const Text('(12)', style: TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.normal
    ),));
    return ratings;
  }
}
