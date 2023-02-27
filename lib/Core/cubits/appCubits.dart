import 'package:bloc/bloc.dart';
import 'package:Game_Finder/Core/cubits/appCubitStates.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits():super(InitialState()) {
   emit(WelcomeState());
  }
}