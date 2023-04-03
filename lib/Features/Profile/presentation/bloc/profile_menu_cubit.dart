import 'package:Game_Finder/Features/Profile/presentation/bloc/profile_menu_state.dart';
import 'package:bloc/bloc.dart';

class ProfileMenuCubit extends Cubit<ProfileMenuState> {
  ProfileMenuCubit() : super(ProfileMenuInitial());

  changePassword() {
    emit(ChangePassword());
  }

  forgotPassword() {
    emit(ForgotPassword());
  }

  aboutApp() {
    emit(AboutTheApp());
  }

  logoutUser() {
    emit(LogoutUser());
  }
}
