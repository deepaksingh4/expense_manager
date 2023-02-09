import 'package:expense_manager/Core/AppExceptions.dart';
import 'package:expense_manager/Features/Login/Data/user_data_model.dart';
import 'package:expense_manager/Features/Login/Domain/login_repository.dart';

import 'entities/user_Entity.dart';

abstract class LoginUseCase {
  Future<UserEntity> getUserDetails(
      {required String username, required String password});
}

class UserLoginUseCase extends LoginUseCase{
  final LoginRepository _loginRepository;

  UserLoginUseCase(this._loginRepository);

  @override
  Future<UserEntity> getUserDetails(
      {required String username, required String password}) async {
    try {
      UserDataModel model = await _loginRepository.getUserDetails(username, password);
      return UserEntity(model.firstName, model.lastName);
    } catch (e){
      rethrow;
    }
  }
}
