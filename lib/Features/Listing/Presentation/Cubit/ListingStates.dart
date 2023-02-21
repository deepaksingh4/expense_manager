import 'package:equatable/equatable.dart';
import 'package:expense_manager/Core/cubits/appCubitStates.dart';

import '../../Domain/GameUIModel.dart';

abstract class ListingStates extends Equatable{}

class InitialListingState extends ListingStates{
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoadingGames extends ListingStates{

  @override
  List<Object?> get props => throw UnimplementedError();
}

class GamesLoaded extends ListingStates{
  late final List<GameUIModel> games;
  GamesLoaded({required this.games});
  @override
  List<Object?> get props => [games];
}

class LoadingGamesFailed extends ListingStates{
  final String errorMessage;

  LoadingGamesFailed({required this.errorMessage});

  @override
  List<Object?> get props => [];
}