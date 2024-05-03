import 'package:bloc_counter/bloc/crud/crud_bloc.dart';
import 'package:bloc_counter/view/todo/add_todo_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBar(
          title: const Text(
            "TODO APP",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: BlocBuilder<CrudBloc, CrudState>(
        builder: (context, state) {
          if (state.todoModel.isNotEmpty) {
            return ListView.builder(
              itemCount: state.todoModel.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: Card(
                    child: ListTile(
                      title: Text(state.todoModel[index].title ?? ""),
                      subtitle: Text(state.todoModel[index].subTitle ?? ""),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            Checkbox(
                                value: state.todoModel[index].isCheck,
                                onChanged: (value) {
                                  context.read<CrudBloc>().add(ValidateIsCheck(
                                      isCheck: value!, index: index));
                                }),
                            IconButton(
                                onPressed: () {
                                  context
                                      .read<CrudBloc>()
                                      .add(DeleteDateToList(index: index));
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return const Center(
              child: Text(
            "TODO LIST EMPTY..",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20),
          ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddTodoView()));
        },
        child: const Icon(Icons.add),
      ),
    );
    // );
  }
}
