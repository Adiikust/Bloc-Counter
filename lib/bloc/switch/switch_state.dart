import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  final bool isSwitch;
  final double isSliderValue;
  const SwitchState({this.isSwitch = true, this.isSliderValue = 1.0});

  SwitchState copyWith({bool? value, double? sliderValue}) {
    return SwitchState(
        isSwitch: value ?? isSwitch,
        isSliderValue: sliderValue ?? isSliderValue);
  }

  @override
  List<Object?> get props => [isSwitch, isSliderValue];
}
