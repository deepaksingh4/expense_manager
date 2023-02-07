
import 'package:flutter_config/flutter_config.dart';

class Endpoints {
  static const images = 'photos';
}

extension ApiUrls on String{
  String url(){
    const baseURL = "https://jsonplaceholder.typicode.com/";
    return baseURL + this;

  //  https://jsonplaceholder.typicode.com/photos
  }
}


