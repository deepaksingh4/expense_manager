import 'package:Game_Finder/Features/Listing/Data/GameList.dart';
import 'GameListingRepository.dart';

class ListGamesUseCase {
  GameListingRepository repository;

  ListGamesUseCase(this.repository);

  Future<GameList> getGames() async {
    GameList list = await repository.getGames();
    return list;
  }
}
