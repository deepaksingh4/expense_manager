
import 'package:bloc/bloc.dart';
import 'package:expense_manager/Features/Dashboard/Data/Expense.dart';
import 'package:expense_manager/Features/Dashboard/Presentation/blocs/dashboard_states.dart';

class DashboardViewModel{
  List<Expense> expenses = [
    Expense(title: 'Expense on cab', description: 'this is just a dummy', amount: 20.00),
    Expense(title: 'Expense on cab', description: 'this is just a dummy', amount: 20.00)
  ] ;
}


class DashboardCubit extends Cubit<DashboardState>{
  DashboardCubit() : super(InitialDashboardState());

  Future<void> loadContent(){
    return Future.delayed(const Duration(seconds: 2),(){
      emit(LoadedContentState());
    });
  }



}