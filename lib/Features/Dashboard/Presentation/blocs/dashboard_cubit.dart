
import 'package:bloc/bloc.dart';
import 'package:expense_manager/Features/Dashboard/Domain/get_image_usecase.dart';
import 'package:expense_manager/Features/Dashboard/Domain/image_model.dart';
import 'package:expense_manager/Features/Dashboard/Domain/images_repository.dart';
import 'package:expense_manager/Features/Dashboard/Presentation/blocs/dashboard_states.dart';

// class DashboardViewModel{
//   List<Expense> expenses = [
//     Expense(title: 'Expense on cab', description: 'this is just a dummy', amount: 20.00),
//     Expense(title: 'Expense on cab', description: 'this is just a dummy', amount: 20.00)
//   ] ;
// }


class DashboardCubit extends Cubit<DashboardState>{
  DashboardCubit() : super(InitialDashboardState());
  final GetImageUseCase useCase = GetImageUseCase();

  loadContent() async{
    var images = await useCase.getImageList();
    emit(LoadedContentState(images!));
  }
}