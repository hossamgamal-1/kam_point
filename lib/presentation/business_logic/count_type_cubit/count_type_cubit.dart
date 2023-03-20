import 'package:bloc/bloc.dart';
import '../../../core/enums/enums.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'count_type_state.dart';

class CountTypeCubit extends Cubit<CountTypeState> {
  CountTypeCubit() : super(CountTypeInitial());

  CountState currentCountState = CountState.upToTen;

  countTypeChange(CountState newCountState) {
    currentCountState = newCountState;
    emit(CountTypeChange());
  }
}
