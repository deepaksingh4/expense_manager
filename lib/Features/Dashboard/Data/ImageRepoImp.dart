import 'package:expense_manager/Core/dio_client.dart';
import 'package:expense_manager/Features/Dashboard/Data/ImageDataModel.dart';
import 'package:expense_manager/Features/Dashboard/Data/ImageDataSource.dart';
import 'package:expense_manager/Features/Dashboard/Domain/image_model.dart';
import 'package:expense_manager/Features/Dashboard/Domain/images_repository.dart';

class ImageRepositoryImp extends ImagesRepository {
  @override
  Future<List<ImageDataModel>> getAllImages() async {
    return await ImageDataSource().getImages();

  }
}
