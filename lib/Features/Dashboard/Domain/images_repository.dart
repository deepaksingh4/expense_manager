import 'package:Game_Finder/Features/Dashboard/Data/ImageDataModel.dart';

abstract class ImagesRepository{
  Future<List<ImageDataModel>> getAllImages();
}