import 'package:equatable/equatable.dart';

abstract class ProfileMenuState extends Equatable {
  const ProfileMenuState();
}

class ProfileMenuInitial extends ProfileMenuState {
  @override
  List<Object> get props => [];
}

class ChangePassword extends ProfileMenuState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ForgotPassword extends ProfileMenuState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AboutTheApp extends ProfileMenuState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LogoutUser extends ProfileMenuState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}