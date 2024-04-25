import 'package:bloc_counter/bloc/counter/counter_bloc.dart';
import 'package:bloc_counter/bloc/switch/switch_bloc.dart';
import 'package:bloc_counter/view/imgpick_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(create: (_) => CounterBloc()),
        BlocProvider<SwitchBloc>(create: (_) => SwitchBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Bloc',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ImgPickView(),
      ),
    );
  }
}
