import 'package:bloc_counter/bloc/todo/todo_bloc.dart';
import 'package:bloc_counter/bloc/todo/todo_event.dart';
import 'package:bloc_counter/bloc/todo/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO LIST', style: TextStyle(color: Colors.white)),
      ),
      body: BlocBuilder<TodoListBloc, TodoListState>(
        builder: (context, state) {
          if (state.todoList.isEmpty) {
            return const Center(child: Text("No TODO List Found!"));
          } else if (state.todoList.isNotEmpty) {
            return ListView.builder(
              itemCount: state.todoList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("TODO ${state.todoList[index].toString()}"),
                  subtitle: Text(index.toString()),
                  trailing: IconButton(
                    onPressed: () {
                      context.read<TodoListBloc>().add(
                          RemoveTodoListItem(index: state.todoList[index]));
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                );
              },
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (int i = 0; i < 10; i++) {
            context
                .read<TodoListBloc>()
                .add(AddTodoListItem(item: i.toString()));
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
