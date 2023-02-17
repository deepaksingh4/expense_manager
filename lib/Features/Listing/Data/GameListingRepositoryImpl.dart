
import 'package:expense_manager/Features/Listing/Data/GameList.dart';
import 'package:expense_manager/Features/Listing/Domain/GameUIModel.dart';

import '../Domain/GameListingRepository.dart';

class GameListingRepositoryImpl implements GameListingRepository{
  @override
  Future<List<GameUIModel>> getGames(GameList list) {

    throw UnimplementedError();
  }


}