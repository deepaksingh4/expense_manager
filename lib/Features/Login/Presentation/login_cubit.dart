

import 'package:bloc/bloc.dart';
import 'package:expense_manager/Core/AppExceptions.dart';
import 'package:expense_manager/Features/Login/Data/login_repo_impl.dart';
import 'package:expense_manager/Features/Login/Data/user_local_service.dart';
import 'package:expense_manager/Features/Login/Domain/entities/user_Entity.dart';
import 'package:expense_manager/Features/Login/Domain/login_use_case.dart';
import 'package:expense_manager/Features/Login/Presentation/login_states.dart';
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