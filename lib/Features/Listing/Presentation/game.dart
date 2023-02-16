import 'package:flutter/cupertino.dart';

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: const [
          Image(image: AssetImage('images/games_placehgolder.jpg')),

        ],
      ),
    )
  }
}
