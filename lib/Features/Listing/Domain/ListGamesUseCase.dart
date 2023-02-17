import 'GameListingRepository.dart';
import 'GameUIModel.dart';

class ListGamesUseCase {
  GameListingRepository repository;

  ListGamesUseCase(this.repository);

  Future<List<GameUIModel>> getGames() async {
    return repository.getGames();
  }
}
