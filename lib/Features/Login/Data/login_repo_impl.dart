import 'package:expense_manager/Core/AppExceptions.dart';
import 'package:expense_manager/Core/AppExceptions.dart';
import 'package:expense_manager/Features/Login/Data/user_data_model.dart';
import 'package:expense_manager/Features/Login/Data/user_local_service.dart';
import '../Domain/login_repository.dart';

class LoginRepositoryIMPL extends LoginRepository{
  final UserService userService;
  LoginRepositoryIMPL(this.userService);

  @override
  Future<UserDataModel> getUserDetails(String username, String password)  async{
   return throw await userService.getUserDetails(username: username, password: password);
  }

}