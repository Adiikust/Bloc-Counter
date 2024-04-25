import 'package:bloc_counter/bloc/switch/switch_bloc.dart';
import 'package:bloc_counter/bloc/switch/switch_event.dart';
import 'package:bloc_counter/bloc/switch/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchView extends StatelessWidget {
  const SwitchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Switch', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<SwitchBloc, SwitchState>(
            buildWhen: (previous, current) =>
                previous.isSwitch != current.isSwitch,
            builder: (context, state) {
              return Switch(
                  value: state.isSwitch,
                  onChanged: (value) {
                    context.read<SwitchBloc>().add(SwitchButton());
                  });
            },
          ),
          const SizedBox(height: 30),
          BlocBuilder<SwitchBloc, SwitchState>(
            buildWhen: (previous, current) =>
                previous.isSliderValue != current.isSliderValue,
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  color: Colors.blueAccent.withOpacity(state.isSliderValue),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          BlocBuilder<SwitchBloc, SwitchState>(
            builder: (context, state) {
              return Slider(
                  value: state.isSliderValue,
                  onChanged: (value) {
                    context
                        .read<SwitchBloc>()
                        .add(SliderButton(isSliderValueEvent: value));
                  });
            },
          ),
        ],
      ),
    );
  }
}
