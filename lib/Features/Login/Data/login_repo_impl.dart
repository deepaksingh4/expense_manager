import 'package:Game_Finder/Core/AppExceptions.dart';
import 'package:Game_Finder/Core/AppExceptions.dart';
import 'package:Game_Finder/Features/Login/Data/user_data_model.dart';
import 'package:Game_Finder/Features/Login/Data/user_local_service.dart';
import '../Domain/login_repository.dart';

class LoginRepositoryIMPL extends LoginRepository{
  final UserService userService;
  LoginRepositoryIMPL(this.userService);

  @override
  Future<UserDataModel> getUserDetails(String username, String password)  async{
   return await userService.getUserDetails(username: username, password: password);
  }

}