class GameUIModel {
  final int id;
  final String name;
  final String backgroundImage;
  final double rating;
  final int reviewsCount;

  const GameUIModel(
  {required this.name, required this.backgroundImage, required this.rating, required this.reviewsCount, required this.id});
}
