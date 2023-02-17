import 'package:expense_manager/Features/Listing/Presentation/rating_widget.dart';
import 'package:expense_manager/Features/Listing/Presentation/tags_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

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
      ),
      child: const GameContent(),
    );
  }
}

class GameContent extends StatelessWidget {
  const GameContent({Key? key}) : super(key: key);

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
        children: const [
          Text(
            'Thi sis a demo tezt donw onlu andjasjidbfi dsbifbi sdbiudbuidsbfi sbhfdsiufguidshguidsh ids g idgfudhfgiudsfih sdiufhis hdiuf gsdfugdsfuygdyug gf uysdguygsdfguydsgfyu gsduyfg uysdgfuysgfuygsdufgsduyfg uysdgfudgsyf gsudgfuysdgfdsgf',
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          TagsWidget(),
          SizedBox(
            height: 5,
          ),
          RatingWidget(),
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
