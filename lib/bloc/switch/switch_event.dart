import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable {
  const SwitchEvent();
  @override
  List<Object?> get props => [];
}

class SwitchButton extends SwitchEvent {}

class SliderButton extends SwitchEvent {
  final double isSliderValueEvent;
  const SliderButton({required this.isSliderValueEvent});

  @override
  List<Object?> get props => [isSliderValueEvent];
}
