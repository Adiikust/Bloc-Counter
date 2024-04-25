import 'package:bloc/bloc.dart';
import 'package:bloc_counter/bloc/switch/switch_event.dart';
import 'package:bloc_counter/bloc/switch/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(const SwitchState()) {
    on<SwitchButton>(_updateState);
    on<SliderButton>(_updateSliderState);
  }
  void _updateState(SwitchButton event, Emitter<SwitchState> emit) {
    emit(state.copyWith(value: !state.isSwitch));
  }

  void _updateSliderState(SliderButton event, Emitter<SwitchState> emit) {
    emit(state.copyWith(sliderValue: event.isSliderValueEvent));
  }
}
