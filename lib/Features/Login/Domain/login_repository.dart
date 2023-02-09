import 'package:expense_manager/Features/Login/Data/user_data_model.dart';

abstract class LoginRepository {
 Future<UserDataModel> getUserDetails(String username, String password);
}

