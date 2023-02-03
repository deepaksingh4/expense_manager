import 'package:expense_manager/Features/Dashboard/Domain/image_model.dart';

abstract class ImagesRepository{
  Future<List<ImageModel>?> getAllImages();
}