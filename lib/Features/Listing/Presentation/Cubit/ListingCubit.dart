import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:Game_Finder/Core/AppExceptions.dart';
import 'package:Game_Finder/Features/Listing/Data/GameList.dart';
import 'package:Game_Finder/Features/Listing/Data/GameListingRepositoryImpl.dart';
import 'package:Game_Finder/Features/Listing/Domain/GameUIModel.dart';
import '../../Domain/ListGamesUseCase.dart';
import 'ListingStates.dart';

class ListingCubit extends Cubit<ListingStates> {
  late ListGamesUseCase useCase;
  late GameList games;
  ListingCubit() : super(InitialListingState());

  setupCubit() {
    var repository = GameListingRepositoryImpl();
    useCase = ListGamesUseCase(repository);
  }

  Future<void> loadGames() async {
    try {
      games = await useCase.getGames();
      GamesLoaded gamesLoaded = GamesLoaded(games: games.getUIModel());
      emit(gamesLoaded);
    } on IssueGettingGames {
      emit(LoadingGamesFailed(
          errorMessage: "Issue while getting data from API"));
    } catch (e) {
      print(e.toString());
    }
  }
}
