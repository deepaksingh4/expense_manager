import 'package:Game_Finder/Core/AppExceptions.dart';
import 'package:Game_Finder/Features/Login/Data/user_data_model.dart';
import 'package:Game_Finder/Features/Login/Domain/login_repository.dart';

import 'entities/user_Entity.dart';

abstract class LoginUseCase {
  Future<UserEntity> getUserDetails(
      {required String username, required String password});
}

class UserLoginUseCase extends LoginUseCase {
  final LoginRepository _loginRepository;

  UserLoginUseCase(this._loginRepository);

  @override
  Future<UserEntity> getUserDetails(
      {required String username, required String password}) async {
    return await _loginRepository
          .getUserDetails(username, password)
          .then((model) => UserEntity(model.firstName, model.lastName));
  }
}
