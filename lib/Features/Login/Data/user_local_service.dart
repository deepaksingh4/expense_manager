import 'package:expense_manager/Core/AppExceptions.dart';
import 'user_data_model.dart';

abstract class UserService {
  Future<UserDataModel> getUserDetails(
      {required String username, required String password});
}

class UserLocalDataService extends UserService {
  @override
  Future<UserDataModel> getUserDetails(
      {required String username, required String password}) {
    if (username == 'Deep' && password == '12345') {
      return Future(() =>  UserDataModel(
          firstName: "Deepak",
          lastName: "Singh",
          city: "Dubai",
          phoneNumber: 542372343));
    } else {
      throw InvalidLoginDetails();
    }
  }
}
