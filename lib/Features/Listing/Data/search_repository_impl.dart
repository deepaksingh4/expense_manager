import 'package:Game_Finder/Features/Listing/Data/GameList.dart';
import 'package:Game_Finder/Features/Listing/Data/search_game_data_source.dart';
import 'package:Game_Finder/Features/Listing/Domain/GameUIModel.dart';
import 'package:Game_Finder/Features/Listing/Domain/search_repository.dart';

class SearchRepositoryImpl extends SearchRepository{
  SearchGameDataSource dataSource = SearchGameDataSource();
  @override
  Future<GameList> searchGames(String searchText) {
    return dataSource.searchGame(searchText);

  }


}