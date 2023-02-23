import 'package:expense_manager/Features/Listing/Data/GameList.dart';
import 'package:expense_manager/Features/Listing/Data/search_game_data_source.dart';
import 'package:expense_manager/Features/Listing/Domain/GameUIModel.dart';
import 'package:expense_manager/Features/Listing/Domain/search_repository.dart';

class SearchRepositoryImpl extends SearchRepository{
  SearchGameDataSource dataSource = SearchGameDataSource();
  @override
  Future<GameList> searchGames(String searchText) {
    return dataSource.searchGame(searchText);

  }


}