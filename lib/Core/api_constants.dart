
import 'package:flutter_config/flutter_config.dart';

class Endpoints {
  static const images = 'photos';
}

extension ApiUrls on String{
  String url(){
    final baseURL = FlutterConfig.get('BASE_URL');
    return baseURL + this;
  }
}


