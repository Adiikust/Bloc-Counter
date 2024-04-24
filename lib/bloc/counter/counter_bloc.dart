import 'package:bloc/bloc.dart';
import 'package:bloc_counter/bloc/counter/counter_event.dart';
import 'package:bloc_counter/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<Increment>(_increment);
    on<Decrement>(_decrement);
  }
  void _increment(Increment event, Emitter<CounterState> emit) {
    emit(state.copyWith(value: state.counter! + 1));
  }

  void _decrement(Decrement event, Emitter<CounterState> emit) {
    emit(state.copyWith(value: state.counter! - 1));
  }
}
