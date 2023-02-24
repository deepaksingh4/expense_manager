

import 'package:bloc/bloc.dart';
import 'package:Game_Finder/Core/AppExceptions.dart';
import 'package:Game_Finder/Features/Login/Data/login_repo_impl.dart';
import 'package:Game_Finder/Features/Login/Data/user_local_service.dart';
import 'package:Game_Finder/Features/Login/Domain/entities/user_Entity.dart';
import 'package:Game_Finder/Features/Login/Domain/login_use_case.dart';
import 'package:Game_Finder/Features/Login/Presentation/login_states.dart';
import 'package:flutter/cupertino.dart';

import '../Domain/login_repository.dart';

class LoginCubit extends Cubit<LoginSates>{
final LoginUseCase _useCase = UserLoginUseCase(LoginRepositoryIMPL(UserLocalDataService()));

  LoginCubit(): super(NotLoggedIn());

  logInUser({ required String username, required String password}) async {
    try {
        UserEntity user = await _useCase.getUserDetails(
            username: username, password: password);
        emit(LoggedIn(user));
    } catch (e){
      emit(LoginFailed(e.toString()));
    }
  }
}