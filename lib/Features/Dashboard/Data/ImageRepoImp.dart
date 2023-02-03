import 'package:expense_manager/Core/http_handler.dart';
import 'package:expense_manager/Features/Dashboard/Data/ImageDataSource.dart';
import 'package:expense_manager/Features/Dashboard/Domain/image_model.dart';
import 'package:expense_manager/Features/Dashboard/Domain/images_repository.dart';

class ImageRepositoryImp extends ImagesRepository {
  @override
  Future<List<ImageModel>> getAllImages() async {
    var images = await ImageDataSource().getImages();
    List<ImageModel> listImages = [];
    for (final image in images!) {
      listImages.add(ImageModel.fromDataModel(image));
    }
    return listImages;
  }
}
