import 'package:expense_manager/Features/Dashboard/Data/ImageRepoImp.dart';
import 'package:expense_manager/Features/Dashboard/Domain/image_model.dart';
import 'package:expense_manager/Features/Dashboard/Domain/images_repository.dart';

class GetImageUseCase{
  ImagesRepository repo = ImageRepositoryImp();
  Future<List<ImageModel>> getImageList() async {
    var images = await repo.getAllImages();
    return images;
  }
}