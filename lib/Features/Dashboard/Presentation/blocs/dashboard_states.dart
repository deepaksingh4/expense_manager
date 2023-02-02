import 'package:equatable/equatable.dart';
import 'package:expense_manager/Features/Dashboard/Domain/image_model.dart';

abstract class DashboardState extends Equatable{}

class InitialDashboardState extends DashboardState{
  @override
  List<Object?> get props => [];
}


class LoadingContentState extends DashboardState{

  @override
  List<Object?> get props => [];
}

class LoadedContentState extends DashboardState{
  final List<ImageModel> images;

  LoadedContentState(this.images);

  @override
  List<Object?> get props => [images];

}