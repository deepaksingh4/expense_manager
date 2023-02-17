import 'package:bloc/bloc.dart';
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

  loadGames() async {
    // var games =  [ const GameUIModel("name", "backgroundImageURL", 4.0, 121, 111)];
    List<GameUIModel> data = await useCase.getGames();
    GamesLoaded gamesLoaded = GamesLoaded(games: data);
    emit(gamesLoaded);
  }
}
