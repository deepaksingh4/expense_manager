
import 'package:equatable/equatable.dart';
import 'package:Game_Finder/Features/Login/Domain/entities/user_Entity.dart';

abstract class LoginSates extends Equatable{}

class LoggedIn extends LoginSates{
  final UserEntity user;
  LoggedIn(this.user);

  @override
  List<Object?> get props => [user];
}

class NotLoggedIn extends LoginSates{
  @override
  List<Object?> get props => [];
}

class LoginFailed extends LoginSates{
  final String errorMessage;
  LoginFailed(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}