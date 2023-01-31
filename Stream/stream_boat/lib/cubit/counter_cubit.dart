import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_boat/cubit/counter_state.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue));

  void increment() => emit(CounterState(counterValue: state.counterValue + 1));
  void decrement() => emit(CounterState(counterValue: state.counterValue - 1));
}
