
import 'package:flutter_config/flutter_config.dart';

class Endpoints {
  static const images = 'photos';
}

extension ApiUrls on String{
  String url(){
    final baseURL = String.fromEnvironment("BASE_URL");
    return baseURL + this;

  //  https://jsonplaceholder.typicode.com/photos
  }
}


