
import 'package:flutter_config/flutter_config.dart';

class Endpoints {
  static const images = 'photos';
  static const gameList = 'games';
}

extension ApiUrls on String{
  String url(){
    const baseURL = "https://api.rawg.io/api/";
    return baseURL + this;

  //  https://jsonplaceholder.typicode.com/photos
  }
}
