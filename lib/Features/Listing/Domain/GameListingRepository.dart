import '../Data/GameList.dart';

abstract class GameListingRepository {
  Future<GameList> getGames();
}