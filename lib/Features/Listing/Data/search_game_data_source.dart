import 'package:Game_Finder/Core/dio_client.dart';

import '../../../Core/AppExceptions.dart';
import '../../../Core/api_constants.dart';
import '../Data/GameList.dart';

class SearchGameDataSource {
  DioClient dioClient = DioClient();

  Future<GameList> searchGame(String searchText) async {
    GameList list = GameList();
    await dioClient.performGet(
        path: Endpoints.gameList.url(),
        queryParams: {
          'key': 'b762ec803b8949879db2a471c9fcbcc5',
          'page_size': '15',
          'page': '1',
          'search': searchText
        },
        success: (data) {
          var jsonData = data.body;
          list = GameList.fromJson(jsonData);
        },
        failure: (error) {
          throw IssueGettingGames(errorCode: 400);
        }
    );
    return list;
  }
}
