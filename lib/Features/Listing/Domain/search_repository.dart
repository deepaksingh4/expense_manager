import 'package:Game_Finder/Features/Listing/Data/GameList.dart';

abstract class SearchRepository {
Future<GameList> searchGames(String searchText);
}