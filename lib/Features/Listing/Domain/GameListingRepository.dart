import 'package:expense_manager/Features/Listing/Domain/GameUIModel.dart';

abstract class GameListingRepository {
  Future<List<GameUIModel>> getGames();
}