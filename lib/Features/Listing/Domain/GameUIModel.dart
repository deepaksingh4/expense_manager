import 'package:expense_manager/Features/Listing/Data/GameList.dart';

class GameUIModel {
  final int id;
  final String name;
  final String backgroundImage;
  final double rating;
  final int reviewsCount;
  final List<Genre> tags;

  const GameUIModel(
  {required this.name, required this.backgroundImage, required this.rating, required this.reviewsCount, required this.id, required this.tags});
}
