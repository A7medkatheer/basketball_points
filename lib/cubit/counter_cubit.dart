import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoint = 0;
  int teamBPoint = 0;

  void teamIncrement(
    {required int buttonNumber,required String team}
  ) {
    if (team == "A") {
  teamAPoint += buttonNumber;
    emit(CounterAIncrementState());
}else{

  teamBPoint += buttonNumber;
  emit(CounterBIncrementState());
}
  }

  void reset() {
    teamAPoint = 0;
    teamBPoint = 0;
    emit(CounterResetState());
  }
}
