import 'package:equatable/equatable.dart';
import 'package:expense_manager/Core/cubits/appCubitStates.dart';

abstract class ListingStates extends Equatable{}

class InitialListingState extends ListingStates{
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoadingHotels extends ListingStates{

  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoadedData extends ListingStates{
  @override
  List<Object?> get props => throw UnimplementedError();
}