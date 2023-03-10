
import 'package:expense_manager/Features/Listing/Data/GameList.dart';
import 'package:expense_manager/Features/Listing/Data/GameListingDataSource.dart';
import '../Domain/GameListingRepository.dart';

class GameListingRepositoryImpl implements GameListingRepository{

  GameListingDataSource dataSource = GameListingDataSource();

  @override
  Future<GameList> getGames() async {
    print('Gamelisting');
    GameList list = await dataSource.getGames();
    print('Gamelisting----');
    return list;
  }

}