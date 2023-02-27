import 'package:equatable/equatable.dart';

import '../../Domain/GameUIModel.dart';

abstract class SearchStates extends Equatable{}


class SearchingState extends SearchStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class NotSearchingState extends SearchStates{

  @override
  List<Object?> get props => [];
}
class SearchingDone extends SearchStates{
  final List<GameUIModel> searchResult;

  SearchingDone({required this.searchResult});

  @override
  List<Object?> get props => [searchResult];
}


