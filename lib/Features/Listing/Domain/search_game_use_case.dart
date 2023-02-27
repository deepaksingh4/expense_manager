import 'package:Game_Finder/Features/Listing/Domain/GameUIModel.dart';
import 'package:Game_Finder/Features/Listing/Domain/search_repository.dart';

import '../Data/GameList.dart';
import '../Data/search_repository_impl.dart';

class SearchGamesUseCase {
  final SearchRepository _repository = SearchRepositoryImpl();

  Future<GameList> searchGame({required String searchText}) {
    return _repository.searchGames(searchText);
  }
}
