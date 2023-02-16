import 'package:bloc/bloc.dart';
import 'ListingStates.dart';

class ListingCubit extends Cubit{
  ListingCubit(): super(InitialListingState());
}