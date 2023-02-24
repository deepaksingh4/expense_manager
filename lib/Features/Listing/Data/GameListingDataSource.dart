import 'package:Game_Finder/Core/AppExceptions.dart';
import 'package:Game_Finder/Features/Listing/Data/GameList.dart';

import '../../../Core/api_constants.dart';
import '../../../Core/dio_client.dart';

class GameListingDataSource {
  Future<GameList> getGames() async{
    GameList list = GameList();
   await DioClient().performGet(
        path: Endpoints.gameList.url(),
        queryParams: {
          'key': 'b762ec803b8949879db2a471c9fcbcc5',
          'page_size': '15',
          'page': '1'
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
