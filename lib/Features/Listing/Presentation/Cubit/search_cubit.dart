import 'package:bloc/bloc.dart';
import 'package:expense_manager/Features/Listing/Data/GameList.dart';
import 'package:expense_manager/Features/Listing/Domain/GameUIModel.dart';
import 'package:expense_manager/Features/Listing/Domain/search_repository.dart';
import 'package:expense_manager/Features/Listing/Presentation/Cubit/search_states.dart';

import '../../Data/search_repository_impl.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchingState());
  final SearchRepository _repository = SearchRepositoryImpl();

  searchGame(String searchText) async {
    GameList games = await _repository.searchGames(searchText);
    List<GameUIModel> list = games.getUIModel();
    emit(SearchingDone(searchResult: list));

  }
}
