import 'package:Game_Finder/Core/api_constants.dart';
import 'package:Game_Finder/Core/dio_client.dart';
import 'package:Game_Finder/Features/Dashboard/Data/ImageDataModel.dart';

class ImageDataSource {
  Future<List<ImageDataModel>> getImages() async {
    List<ImageDataModel> res = [];
    await DioClient().performGet(
        path: Endpoints.images.url(),
        success: (data) {
          var jsonData = data.body;
         res = (jsonData as List)
              .map((imageJson) => ImageDataModel()..fromJson(imageJson))
              .toList();
        },

        failure: (error) {
          print("Error occured $error");
        });
    return res;
  }
}