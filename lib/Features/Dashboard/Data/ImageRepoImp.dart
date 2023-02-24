import 'package:Game_Finder/Core/dio_client.dart';
import 'package:Game_Finder/Features/Dashboard/Data/ImageDataModel.dart';
import 'package:Game_Finder/Features/Dashboard/Data/ImageDataSource.dart';
import 'package:Game_Finder/Features/Dashboard/Domain/image_model.dart';
import 'package:Game_Finder/Features/Dashboard/Domain/images_repository.dart';

class ImageRepositoryImp extends ImagesRepository {
  @override
  Future<List<ImageDataModel>> getAllImages() async {
    return await ImageDataSource().getImages();

  }
}
