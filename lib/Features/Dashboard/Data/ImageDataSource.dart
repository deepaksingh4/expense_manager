import 'package:expense_manager/Core/api_constants.dart';
import 'package:expense_manager/Core/http_handler.dart';
import 'package:expense_manager/Features/Dashboard/Data/ImageDataModel.dart';

class ImageDataSource {
  Future<List<ImageDataModel>?> getImages() async {
    List<ImageDataModel> res = [];
    await HttpHandler().performGet(
        path: Endpoints.images.url(),
        success: (data) {
          var jsonData = data.body;
          for (final j in jsonData) {
            var result = ImageDataModel()..fromJson(j);
            res.add(result);
          }
        },
        failure: (error) {
          print("Error occured $error");
        });
  return res;
  }
}
