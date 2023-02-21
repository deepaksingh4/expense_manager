import 'package:cached_network_image/cached_network_image.dart';
import 'package:expense_manager/Features/Listing/Domain/GameUIModel.dart';
import 'package:expense_manager/Features/Listing/Presentation/rating_widget.dart';
import 'package:expense_manager/Features/Listing/Presentation/tags_widget.dart';
import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  const Game({Key? key, required this.model}) : super(key: key);
  final GameUIModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 200,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.redAccent,
        boxShadow: const [
          BoxShadow(
              color: Colors.white30,
              offset: Offset(2.0, 2.0),
              blurRadius: 3,
              spreadRadius: 3)
        ],
        image:  DecorationImage(
            image: CachedNetworkImageProvider(model.backgroundImage), fit: BoxFit.cover),
      ),
      child: GameContent(
        model: model,
      ),
    );
  }
}

class GameContent extends StatelessWidget {
  const GameContent({Key? key, required this.model}) : super(key: key);
  final GameUIModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.maxFinite,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black38,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Text(
            model.name,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
         const SizedBox(
            height: 10,
          ),
          TagsWidget(tags: model.tags,),
         const SizedBox(
            height: 5,
          ),
          RatingWidget(rating: model.rating),
        ],
      ),
    );
  }
}

class GameBackground extends StatelessWidget {
  const GameBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: 200,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.redAccent,
          boxShadow: const [
            BoxShadow(
                color: Colors.white30,
                offset: Offset(2.0, 2.0),
                blurRadius: 3,
                spreadRadius: 3)
          ],
          image: const DecorationImage(
              image: AssetImage('images/tmp.jpg'), fit: BoxFit.cover),
        ));
  }
}
