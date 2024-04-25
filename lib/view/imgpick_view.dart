import 'package:bloc_counter/bloc/counter/counter_bloc.dart';
import 'package:bloc_counter/bloc/counter/counter_event.dart';
import 'package:bloc_counter/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImgPickView extends StatelessWidget {
  const ImgPickView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Img Pick', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [],
      ),
    );
  }
}
