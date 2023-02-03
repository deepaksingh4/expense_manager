import 'package:expense_manager/Features/Dashboard/Data/ImageDataModel.dart';

class ImageModel {
  final String thumbnail;
  final String title;
  final String url;

  ImageModel(this.thumbnail, this.title, this.url);

  factory ImageModel.fromDataModel(ImageDataModel dataModel) {
    return ImageModel(
        dataModel.thumbnailUrl!, dataModel.title!, dataModel.url!);
  }
}
