import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>
{
  CounterCubit() : super(CounterAIncrementState());

  int counterA = 0;
  int counterB = 0;

  void incrementA({required int value, required String team}) {
    if (team == 'A') {
      counterA += value;
      emit(CounterAIncrementState());
    }
  }
  void incrementB({required int value, required String team}) {
    if (team == 'B') {
      counterB += value;
      emit(CounterBIncrementState());
    }
  }
  void reset() {
    counterA = 0;
    counterB = 0;
    emit(CountersResetState());
  }
}