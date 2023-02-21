import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:expense_manager/Core/AppExceptions.dart';
import 'package:expense_manager/Features/Listing/Data/GameList.dart';
import 'package:expense_manager/Features/Listing/Data/GameListingRepositoryImpl.dart';
import 'package:expense_manager/Features/Listing/Domain/GameUIModel.dart';
import '../../Domain/ListGamesUseCase.dart';
import 'ListingStates.dart';

class ListingCubit extends Cubit<ListingStates> {
  late ListGamesUseCase useCase;

  ListingCubit() : super(InitialListingState());

  setupCubit() {
    var repository = GameListingRepositoryImpl();
    useCase = ListGamesUseCase(repository);
  }

  Future<void> loadGames() async {
    // var games =  [ const GameUIModel("name", "backgroundImageURL", 4.0, 121, 111)];
    try {
      GameList data = await useCase.getGames();
      GamesLoaded gamesLoaded = GamesLoaded(
          games: data.results?.map((e) => e.getUIModel()).toList() ?? []);
      emit(gamesLoaded);
    } on IssueGettingGames {
      emit(LoadingGamesFailed(errorMessage: "Issue while getting data from API"));
    } catch (e){
      print(e.toString());
    }
  }
}
