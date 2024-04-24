import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int? counter;
  const CounterState({this.counter = 3});

  CounterState copyWith({int? value}) {
    return CounterState(counter: value ?? counter);
  }

  @override
  List<Object?> get props => [counter];
}
