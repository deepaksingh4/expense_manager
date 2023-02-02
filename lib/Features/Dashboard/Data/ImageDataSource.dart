import 'package:expense_manager/Core/api_constants.dart';
import 'package:expense_manager/Core/http_handler.dart';
import 'package:expense_manager/Features/Dashboard/Data/ImageDataModel.dart';

class ImageDataSource {
  Future<List<ImageDataModel>?> getImages() async{
    //http call
    //return the list of images
    await HttpHandler()
        .performGet(path: Endpoints.images.url(), success: (data) {
          print(data);
          var results = ImageDataModel()..fromJson(data);

          return results;
    }, failure: (error) {
          return null;
    });
    return null;
  }
}
