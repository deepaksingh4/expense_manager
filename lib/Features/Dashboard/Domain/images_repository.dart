import 'package:expense_manager/Features/Dashboard/Data/ImageDataModel.dart';

abstract class ImagesRepository{
  Future<List<ImageDataModel>> getAllImages();
}