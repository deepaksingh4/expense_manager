import 'package:Game_Finder/Features/Dashboard/Data/ImageRepoImp.dart';
import 'package:Game_Finder/Features/Dashboard/Domain/image_model.dart';
import 'package:Game_Finder/Features/Dashboard/Domain/images_repository.dart';

class GetImageUseCase{
  ImagesRepository repo = ImageRepositoryImp();
  Future<List<ImageModel>?> getImageList()  async {
    var images = await repo.getAllImages();
    return images.map((e) => ImageModel.fromDataModel(e)).toList();
  }
}