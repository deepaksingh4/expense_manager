import 'package:expense_manager/Core/http_handler.dart';
import 'package:expense_manager/Features/Dashboard/Data/ImageDataSource.dart';
import 'package:expense_manager/Features/Dashboard/Domain/image_model.dart';
import 'package:expense_manager/Features/Dashboard/Domain/images_repository.dart';

class ImageRepositoryImp extends ImagesRepository{
  @override
  Future<List<ImageModel>> getAllImages() {
    print("1254");
      return HttpHandler().performGet(path: 'path');
  }

}