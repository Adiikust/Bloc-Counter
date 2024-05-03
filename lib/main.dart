import 'package:bloc_counter/bloc/comment/comment_bloc.dart';
import 'package:bloc_counter/bloc/image/image_bloc.dart';
import 'package:bloc_counter/bloc/switch/switch_bloc.dart';
import 'package:bloc_counter/bloc/todo/todo_bloc.dart';
import 'package:bloc_counter/utils/image_pick_utils.dart';
import 'package:bloc_counter/view/todo_view.dart';
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
        BlocProvider<SwitchBloc>(create: (_) => SwitchBloc()),
        BlocProvider<ImageBloc>(create: (_) => ImageBloc(ImagePickUtils())),
        BlocProvider<TodoListBloc>(create: (_) => TodoListBloc()),
        BlocProvider<CommentBloc>(create: (_) => CommentBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Bloc',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TodoView(),
      ),
    );
  }
}
