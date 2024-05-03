import 'package:bloc_counter/bloc/crud/crud_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTodoView extends StatefulWidget {
  const AddTodoView({super.key});

  @override
  State<AddTodoView> createState() => _AddTodoViewState();
}

class _AddTodoViewState extends State<AddTodoView> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Add TODO DATA",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CrudBloc, CrudState>(
              buildWhen: (previous, current) => previous.title != current.title,
              builder: (context, state) {
                return TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                      hintText: "Title", border: OutlineInputBorder()),
                  onChanged: (value) {
                    context
                        .read<CrudBloc>()
                        .add(CrudEvent.validateTitle(title: value));
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            BlocBuilder<CrudBloc, CrudState>(
              buildWhen: (previous, current) =>
                  previous.subTitle != current.subTitle,
              builder: (context, state) {
                return TextFormField(
                  controller: subTitleController,
                  decoration: const InputDecoration(
                      hintText: "Sub Title", border: OutlineInputBorder()),
                  onChanged: (value) {
                    context
                        .read<CrudBloc>()
                        .add(CrudEvent.validateSubTitle(subtitle: value));
                  },
                );
              },
            ),
            const SizedBox(height: 40),
            BlocBuilder<CrudBloc, CrudState>(
              builder: (context, state) {
                return ElevatedButton(
                    onPressed: () {
                      context.read<CrudBloc>().add(const AddDateToList());
                      Navigator.pop(context);
                      print("add");
                    },
                    child: const SizedBox(
                      height: 50,
                      width: 100,
                      child: Center(
                        child: Text(
                          "Add",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
