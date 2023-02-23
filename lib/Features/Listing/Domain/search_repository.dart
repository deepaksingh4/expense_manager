import 'package:expense_manager/Features/Listing/Data/GameList.dart';

abstract class SearchRepository {
Future<GameList> searchGames(String searchText);
}