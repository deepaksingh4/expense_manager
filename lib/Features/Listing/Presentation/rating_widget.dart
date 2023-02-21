import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({Key? key, required this.rating}) : super(key: key);
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 16,
      padding: EdgeInsets.only(left: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: getStars(rating)
      ),
    );
  }

  List<Widget> getStars(double rating) {
    int baseRating = rating.toInt();

    List<Widget> ratings = [];
    for (int i = 0; i < 5; i++) {
      Icon icon;
      if(i < baseRating){
      icon = const Icon(Icons.star, color: Colors.yellowAccent, size: 15,);
      }else{
        icon = const Icon(Icons.star_border_outlined, color: Colors.yellowAccent, size: 15,);
      }
      ratings.add(icon);
    }

    if (baseRating < rating) {
      const halfRating = Icon(Icons.star_half, color: Colors.yellowAccent, size: 15,);
      ratings[baseRating] = halfRating;
    }

    ratings.add( const SizedBox(width: 5,));
    ratings.add(const Text('(12)', style: TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.normal
    ),));
    return ratings;
    }
}
