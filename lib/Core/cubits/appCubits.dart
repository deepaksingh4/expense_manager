import 'package:bloc/bloc.dart';
import 'package:expense_manager/Core/cubits/appCubitStates.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits():super(InitialState()) {
   emit(WelcomeState());
  }

}